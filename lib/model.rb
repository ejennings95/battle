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

def initialize(player1, player2)
  @players = [player1, player2]
end

def player_1
  @players.first
end

def player_2
  @players.last
end

def attack(player)
  player.damage
 end

end
