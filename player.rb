class Player

  attr_accessor :name, :score

  def initialize(name)
    @name = name
    @score = 0
  end

  def get_player
    name
  end

  def set_score=(score)
    @score = score
  end

  def get_score
    score
  end
end
