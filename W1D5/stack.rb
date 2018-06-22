class Stack

  def initialize
    @stack = []
  end

  def push(el)
    @stack << el
    el
  end

  def pop
    @stack.pop
  end

  def peek
    return [] if @stack.length == 0
    @stack[-1]
  end
end
