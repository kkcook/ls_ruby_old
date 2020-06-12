# frozen_string_literal: true

# Convert signed int to signed string
# P: take signed int and return string
# E: at bottom
# D: array of string chars
# A: see if num is pos, neg or zero, assign sign,
#   then use int to string method created in last example

NUMBERS = %w[0 1 2 3 4 5 6 7 8 9].freeze

def integer_to_string(int)
  int.digits.reverse.join
end

def signed_integer_to_string(signed_int)
  output_string = ''

  if signed_int > 0
    output_string = integer_to_string(signed_int).prepend('+')
  elsif signed_int < 0
    signed_int = 0 - signed_int
    output_string = integer_to_string(signed_int).prepend('-')
  else
    output_string = integer_to_string(signed_int)
  end

end

# Examples:
p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
