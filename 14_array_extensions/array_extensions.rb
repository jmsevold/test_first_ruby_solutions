class Array
  def sum
    if self.empty?
      0
    else
      self.reduce do |total,i|
        total + i
      end
    end
  end
  def square
    if self.empty?
      []
    else
      squares = self.map do |i|
        i ** 2
      end
    end
  end
  def square!
    i = 0
    while i < self.length
      self[i] = self[i] ** 2
      i += 1
    end
    self
  end
end