class Player

  attr_reader :name, :hp

  def initialize(name, hp=100)
    @name = name
    @hp = hp
  end

  def damage
    @hp -= 10
  end

end

class Game

  attr_reader :current_turn, :opponent

def initialize(player1, player2)
  @players = [player1, player2]
  @current_turn = player1
  @opponent = player2
end

def player_1
  @players.first
end

def player_2
  @players.last
end

def switching_turns
  @opponent = @current_turn
  @current_turn = opponent_of(@current_turn)
end

def opponent_of(current_player)
  @players.select { |player| player != current_player }.first
end

def attack(player)
  player.damage
 end

end
