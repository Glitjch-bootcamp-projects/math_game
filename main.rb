require './game.rb'
require './players.rb'
require './questions.rb'
require 'pp'

# create players
matt = Players.new "Matt"
tj = Players.new "TJ"
new_game = Game.new matt, tj

# create the players and print them. Assign player one to go first
new_game.print_players

# generate
new_game.take_turn
