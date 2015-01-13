#Implement basic queue in Ruby

class Queue
  def initialize(max_size)
    @store = []
    @max_size = max_size
  end

  def enqueue(element)
    unless full?
      @store.unshift(element)
      return @store
    end
    nil
  end

  def dequeue
    @store.pop
  end

  def size
    @store.length
  end

  private
  def full?
    @store.length >= @max_size
  end
end

# TESTS

queue = Queue.new(3)
p queue.size == 0
p queue.dequeue == nil
p queue.enqueue(1) == [1]
p queue.enqueue(2) == [2,1]
p queue.enqueue(3) == [3,2,1]
p queue.enqueue(4) == nil
p queue.size == 3
p queue.dequeue == 1
p queue.dequeue == 2
p queue.size == 1