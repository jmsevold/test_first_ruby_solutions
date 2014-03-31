class Friend
  def initialize(who = nil)
    @who= who
  end
  def greeting(who = nil)
    if who == nil
      "Hello!"
    else
      "Hello, #{who}!"
    end
  end
end
 

#consider writing code that checks if an argument has been passed
#if so, it will greet with the name. If not, it will say "Hello!"
#something wrong with initialize 
