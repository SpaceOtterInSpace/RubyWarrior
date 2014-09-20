
#level 2

class Player
  def play_turn(warrior)
    if warrior.feel.empty?
      warrior.walk!
    else
      warrior.attack!
    end
  end
end

#level 3
class Player
  def play_turn(warrior)
    if warrior.feel.empty?
      if warrior.health < 20
        warrior.rest!
      else
        warrior.walk!
      end
    else
      warrior.attack!
    end
  end
end

#level 4
class Player
  def play_turn(warrior)
    if !warrior.feel.empty?
        warrior.attack!
    elsif warrior.health < 20
      if @health && warrior.health < @health
        warrior.walk!
      else
        warrior.rest!
      end
    else
        warrior.walk!
    end
    @health = warrior.health
   end
end

