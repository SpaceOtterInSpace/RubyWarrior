
level 2
class Player
  def play_turn(warrior)
    if warrior.feel.empty?
      warrior.walk!
    else
      warrior.attack!
    end
  end
end

level 3