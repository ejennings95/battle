# If you haven't picked this up by now, use of global variables is pretty much Ruby blasphemy, because they can easily crash your program. Since we don't know much about databases, we're allowing this horrible sin in exchange for simplified learning. But don't use them outside of this week. Please.
require_relative 'app'

class Player

  attr_reader :name, :hp

  def initialize(name, hp=100)
    @name = name
    @hp = hp
  end

  def damage
    @hp - 10
  end

end
