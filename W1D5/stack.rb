class Stack

  def initialize
    @stack = []
  end

  def push(el)
    @stack << el
  end

  def pop
    @stack.pop
  end

  def peek
    return [] if @stack.length == 0
    @stack[0]
  end
end
