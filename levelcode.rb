
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
    if !warrior.feel.empty? #when a monster is next to you
        warrior.attack!
    elsif warrior.health < 20 #when there is no monster next to you but your health is less than 20
      if @health && warrior.health < @health #when youre getting shot by the arrow
        warrior.walk!
      else #when no one is attacking this brings your health up to 20
        warrior.rest!
      end
    else
        warrior.walk! #when no one is attacking and your health is 20 you need to keep walking
    end
    @health = warrior.health
   end
end

