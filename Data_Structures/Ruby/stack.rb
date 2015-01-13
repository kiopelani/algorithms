#Implement a basic stack in Ruby
class Stack
  def initialize(max_size)
    @store = []
    @max_size = max_size
    @mins = []
  end

  def push(element)
    unless full?
      @mins.push(element) if (@mins.last == nil || element <= @mins.last)
      @store.push(element)
      @store
    end
  end

  def pop
    if @store.length > 0
      @mins.pop if @store.last == @mins.last
      @store.pop
    end
  end

  def size
    @store.length
  end

  def min
    @mins.last
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
p my_stack.min == 1
p my_stack.push(0) == [1, 0]
p my_stack.min == 0
p my_stack.pop == 0
p my_stack.min == 1
