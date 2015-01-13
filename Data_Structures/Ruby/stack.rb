#Implement a basic stack in Ruby
class Stack
  def initialize(max_size)
    @store = []
    @max_size = max_size
  end

  def push(element)
    unless full?
      @store.push(element)
      @store
    end
  end

  def pop
    @store.pop
  end

  def size
    @store.length
  end

  private
  def full?
    size >= @max_size
  end
end

# TESTS

my_stack = Stack.new(3)
p my_stack.size == 0
p my_stack.pop == nil
p my_stack.push(1) == [1]
p my_stack.push(2) == [1,2]
p my_stack.push(3) == [1,2,3]
p my_stack.push(4) == nil
p my_stack.size == 3
p my_stack.pop == 3
p my_stack.pop == 2
p my_stack.size == 1
