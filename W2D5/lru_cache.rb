class LRUCache
  def initialize(size)
    @list = Array.new(size)
    @count = 0
  end

  def count
    # returns number of elements currently in cache
    @count
  end

  def add(el)
    # adds element to cache according to LRU principle
    @list.unshift(el)
    @count += 1
    el
  end

  def show
    # shows the items in the cache, with the LRU item first
    p @list[0...count]
  end

  private
  # helper methods go here!

end
