class LRUCache

  def initialize(size)
    @size = size
    @cache = []

  end

  def count
    # returns number of elements currently in cache
    @cache.count
  end

  def add(el)
    # adds element to cache according to LRU principle
    if @cache.count < size
      @cache << el
    elsif @cache.include?(el)
      @cache.delete(el)
      @cache << el
    else
      @cache = @cache.drop(1) << el
    end
  end

  def show
    # shows the items in the cache, with the LRU item first
    @cache
  end

  private
  # helper methods go here!

end
