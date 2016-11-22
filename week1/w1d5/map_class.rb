class Map
  attr_reader :map

  def initialize
    @map = []
  end

  def assign(key, value)
    if map.none? { |pair| pair.first == key }
      map << [key, value]
    else
      map.map do |pair|
        if pair.first == key
          [key, value]
        else
          pair
        end
      end
    end
  end

  def lookup(key)
    map.each do |pair|
      if pair.first == key
        return pair.last
      end
    end
    nil
  end

  def remove(key)
    map.each.with_index do |pair, idx|
      if pair.first == key
        map.delete_at(idx)
      end
    end
    map
  end

  def show
    map
  end

end
