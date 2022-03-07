require "./questions.rb"

class Players
  attr_reader :lives, :name
  def initialize name
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end


  def prompt_player
    print "#{@current_player}, "
  end
end