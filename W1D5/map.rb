class Map

  def initialize
    @map = []
  end

  def set(key, value)
    pair_idx = @map.index { |pair| pair[0] == key }
    if pair_idx
      @map[pair_idx][1] = value
    else
      @map.push([key, value])
    end
    value
  end

  def get(key)
    @map.each { |pair| return pair[1] if pair[0] == key }
  end

  def delete(key)
    value = get(key)
    @map.reject! { |pair| pair[0] == key }
    value
  end

  def show
    deep_dup(map)
  end

  private

  attr_reader :map

  def deep_dup(arr)
    arr.each do |el|
      if el.is_a? Array
        deep_dup(el)
      else
        el
      end
    end
    arr
  end
end
