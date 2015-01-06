# Binary Search

# Tests

def assert_equals(expected, actual, message)
  puts "*" * 50
  puts message.upcase
  p expected == actual
  puts "expected #{expected} and got #{actual}"
  puts "*" * 50
end

assert_equals(1,1,"1 should be equal to 1")