class MaxIntSet
  def initialize(max)
    @max = max
    @store = Array.new(max, false)
    p @store
  end

  def insert(num)
    raise "Out of bounds" if num > @max
    raise "Out of bounds" if num < 0
    
    @store[num] = true
    true
  end

  def remove(num)
    @store[num] = false
  end

  def include?(num)
    return true if @store[num] == true
    false
  end

  private

  def is_valid?(num)
  end

  def validate!(num)
  end
end


class IntSet
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @num_buckets = num_buckets
    p @store
  end

  def insert(num)
    bucket = num % @num_buckets
    @store[bucket] << num
  end

  def remove(num)
    bucket = num % @num_buckets
    @store[bucket].delete(num)
  end

  def include?(num)
    bucket = num % @num_buckets
    @store[bucket].include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
  end
end
