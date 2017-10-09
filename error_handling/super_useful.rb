# PHASE 2
def convert_to_int(str)

  begin
    Integer(str)
  rescue ArgumentError
    nil
  end
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else
    raise StandardError
  end
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  begin
  puts "Feed me a fruit! (Enter the name of a fruit:)"

  maybe_fruit = gets.chomp
  reaction(maybe_fruit)
rescue
  puts "Not a fruit! Try again"
    retry
  end
end
class FriendError < StandardError

end
# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    raise FriendError.new, "Must have a name!" if name.empty?
    @name = name
    raise FriendError.new, "Real friends must have known each other for at least 5 years!" if yrs_known < 5
    @yrs_known = yrs_known
    raise FriendError.new, "Must have a favorite pastime!" if fav_pastime.empty?
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me."
  end
end
