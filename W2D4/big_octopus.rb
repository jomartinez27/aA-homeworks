def sluggish_octo(arr)
  i = 0
  while i < length - 1
    fish_1 = arr[i]
    j = i + 1
    while j < length
      fish_2 = arr[j]

      j += 1
    end
    i += 1
  end
end

class Array
  def merge_sort(&prc)
    prc ||= Proc.new {|x,y| x <=> y}
    return self if length <= 1
    mid = length / 2

    left = self.take(mid).merge_sort(&prc)
    right = self.drop(mid).merge_sort(&prc)

    Array.merge(left, right, & prc)
  end

  private

  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end
    merged.concat(left)
    merged.concat(right)

    merged
  end
end

def clever_octo(arr)
  longest_fish = ""
  arr.each { |fish| longest_fish = fish if fish.length >= longest_fish.length }
  longest_fish
end

def slow_dance(direction)
  tentacle = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
  tentacle.each_with_index {|dir, i| return i if dir == direction}
end

def constant_dance(direction)
  tentacle = {
    'up' => 0,
    'right-up' => 1,
    'right' => 2,
    'right-down' => 3,
    'down' => 4,
    'left-down' => 5,
    'left' => 6,
    'left-up' => 7
  }

  tentacle[direction]
end
