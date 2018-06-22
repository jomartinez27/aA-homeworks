class Queue

  def initialize
    @que = []
  end

  def enqueue(el)
    @que << el
    el
  end

  def dequeue
    @que.shift
  end

  def peek
    return [] if @que.length == 0
    @que[-1]
  end
end
