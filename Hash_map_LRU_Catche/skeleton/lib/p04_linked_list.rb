class Node
  attr_accessor :key, :val, :next, :prev

  def initialize(key = nil, val = nil)
    @key = key
    @val = val
    @next = nil
    @prev = nil
  end

  def to_s
    "#{@key}: #{@val}"
  end

  def remove
    # optional but useful, connects previous link to next link
    # and removes self from list.
  end
end

class LinkedList
  def initialize
    @first = first
    @last = last
    @head.next = @last
    @tail.prev = @first
  end

  def [](i)
    each_with_index { |link, j| return link if i == j }
    nil
  end

  def first
    @head = Node.new
  end

  def last
      @tail = Node.new
  end

  def empty?
    @last.prev == @first
  end

  def get(key)
  end

  def include?(key)
  end

  def append(key, val)
  end

  def update(key, val)
  end

  def remove(key)
  end

  def each
  end

  # uncomment when you have `each` working and `Enumerable` included
  # def to_s
  #   inject([]) { |acc, link| acc << "[#{link.key}, #{link.val}]" }.join(", ")
  # end
end
