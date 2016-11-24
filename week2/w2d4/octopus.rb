fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish',
  'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(array)
  array.each_with_index do |fish1, idx1|
    max_length = true
    array.each_with_index do |fish2, idx2|
      next if idx1 == idx2
      max_length = false if fish2.length > fish1.length
    end
    return fish1 if max_length
  end
end

class Array

  def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x <=> y }
    return self if self.length <= 1

    middle = self.length / 2
    sorted_left = self[0...middle].merge_sort(&prc)
    sorted_right = self[middle..-1].merge_sort(&prc)

    Array.merge(sorted_left, sorted_right, &prc)
  end

  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      if prc.call(left.first, right.first) == 1
        merged << right.shift
      else
        merged << left.shift
      end
    end

    merged + left + right
  end
end

def dominant_octopus(array)
  prc = Proc.new { |x, y| y.length <=> x.length }
  array.merge_sort(&prc)[0]
end

def clever_octopus(array)
  longest_fish = array.first
  fishes.each do |fish|
    if fish.length > longest_fish.length
      longest_fish = fish
    end
  end
  longest_fish
end

def slow_dance(direction, tiles_array)

end

def fast_dance(direction, tiles_hash)

end
