require_relative 'test_methods'

def binary_search(array, item)
  upper = array.length - 1
  lower = 0
  while upper >= lower
    mid = (upper + lower) / 2
    if array[mid] < item
      lower = mid + 1
    elsif array[mid] > item
      upper = mid - 1
    else
      return mid
    end
  end
end

# Tests
sorted_array = [1,2,3,4,5]
sorted_array_even = [2,4,6,8,10,12]

puts "#binary_search should return the correct index of an item for an odd length array"

assert_equals(2, binary_search(sorted_array, 3))
assert_equals(0, binary_search(sorted_array, 1))
assert_equals(3, binary_search(sorted_array, 4))
assert_equals(nil, binary_search(sorted_array, 0))

puts ""
puts "#binary_search should return the correct index of an item for an even length array"
assert_equals(3, binary_search(sorted_array_even, 8))
assert_equals(0, binary_search(sorted_array_even, 2))
assert_equals(4, binary_search(sorted_array_even, 10))
assert_equals(nil, binary_search(sorted_array_even, 100))


