#! /usr/bin/env ruby
require './game'
require './player'

puts "Welcome to Math Wars!!"

game = Game.new

# game.get_name
# game.get_starting_player
game.play

puts "Thanks for playing"