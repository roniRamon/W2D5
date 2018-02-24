class Fixnum
  # Fixnum#hash already implemented for you
end

class Array
  def hash
    self.join.to_i.hash
  end
end

class String
  def hash
    arr = []
    self.each_byte { |c| arr << c }
    arr.join.to_i.hash
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    arr = []
    arr.concat(self.keys.sort)
    arr.concat(self.values.sort)
    result = []
    arr.each do |el|
      el.to_s.each_byte { |c| result << c }
    end
    result.join.to_i.hash
  end
end
