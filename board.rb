class Board

  attr_accessor :size, :snakes, :ladders

  def initialize(size)
    @size = size
    @ladders = { 1: 32, 3: 12, 8: 23, 10: 82 }
    @snakes = { 98: 60, 92: 69, 88: 99, 56: 63 }
  end

  def is_snake?(n)
    snakes.has_key?(n)
  end

  def is_ladders?(n)
    ladders.has_key?(n)
  end
end
