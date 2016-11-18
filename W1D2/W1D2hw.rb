def sum_to(n)
  return nil if n < 1
  return 1 if n == 1
  n + sum_to(n - 1)
end

# Test Cases
sum_to(5)  # => returns 15
sum_to(1)  # => returns 1
sum_to(9)  # => returns 45
sum_to(-8) # => returns nil


def add_numbers(nums_array = nil)
  return nil if nums_array.nil?
  return nums_array.first if nums_array.length == 1
  nums_array.first + add_numbers(nums_array[1..-1])
end

# Test Cases
add_numbers([1, 2, 3, 4]) # => returns 10
add_numbers([3]) # => returns 3
add_numbers([-80, 34, 7]) # => returns -39
add_numbers() # => returns nil


def gamma_fnc(num)
  return nil if num < 1
  return 1 if num == 1
  (num - 1) * gamma_fnc(num - 1)
end

# Test Cases
gamma_fnc(0)  # => returns nil
gamma_fnc(1)  # => returns 1
gamma_fnc(4)  # => returns 6
gamma_fnc(8)  # => returns 5040
