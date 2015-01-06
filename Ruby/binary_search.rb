require_relative 'test_methods'
# Binary Search

def binary_search(array, item_to_find)
end

# Tests

sorted_array = [1,2,3,4,5]
sorted_array_dups = [2,2,5,6,6,20]

puts "#binary_search should return the correct index of an item"

assert_equals(2, binary_search(sorted_array, 3))
assert_equals(0, binary_search(sorted_array, 1))
assert_equals(3, binary_search(sorted_array, 4))
assert_equals(nil, binary_search(sorted_array, 27))


