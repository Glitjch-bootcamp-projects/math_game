require './players.rb'
require './questions.rb'

class Game

  attr_accessor :current_player
  def initialize p1, p2
    @p1 = p1
    @p2 = p2
    @current_player = p1
  end

  # Player methods
  def print_players
    puts "Welcome #{@p1.name} and #{@p2.name}"
  end
  
  def change_player
    puts "----- NEW TURN ------"
    if @current_player == @p1
      @current_player = @p2
      puts "now it's #{@current_player.name}'s turn \n"
    else
      @current_player = @p1
      puts "now it's #{@current_player.name}'s turn \n"
    end
    take_turn
  end

  # question methods
  def take_turn
    next_question = Question.new
    answer = next_question.prompt_user
    if not next_question.validate answer
      @current_player.lose_life
      puts "Player One #{@p1.lives}/3; Player Two #{@p2.lives}/3"
      check_lives
    end
  end

  def check_lives
    if not current_player.lives == 0
      change_player
    else 
      end_game
    end
  end

  def end_game
    puts "----- Game over ------"
  end

end