class Main

  attr_accessor :players_count, :board, :players

  def initialize(players_count)
    @players_count = players_count
    @players = Array.new
    players_count.times { @players << Player.new }
    @board = Board.new(100)
  end

  def play
    players.each_with_index do |player, index|
      if player.score + Dice.spin <= 100
        player.score += Dice.spin
      end
      if board.is_snake?(player.score)
        player.score = board.snakes[player.score]
      elsif board.is_ladders?(player.score)
        player.score = board.snakes[player.score]
      end
      return "#{index} won " if is_winner?(player)
    end
  end

  def is_winner?(player)
    player.score == 100
  end
end
