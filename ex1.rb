# Write code to generate a hash where the keys are the numbers from 1 to 50 and the values follow these rules:

# if the number is divisible by 2 the value should be one more than the key

# if the number is divisible by 7 the value should be one less than the key

# if the number is divisible by 2 and 7 the value should be the key multiplied by 2

# otherwise the value should be the same number as the key

hash = {}

def calculate(num)
  if num%2 == 0 && num%7 != 0
    num + 1
  elsif num%7 == 0 && num%2 != 0
    num - 1
  elsif num%2 == 0 && num%7 == 0
    num * 2
  else
    num
  end
end

(1..50).each do |range|
    hash[range] = calculate(range)
end

require 'pp'
pp hash
