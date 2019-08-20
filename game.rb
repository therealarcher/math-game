require './player'
require './question'

class Game

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @players = [@player1, @player2]
  end

  # def get_name
  #   print "Player 1, what is your name? "
  #   player1 = Player.new(gets.chomp)
  #   print "Player 2, what is your name? "
  #   player2 = Player.new(gets.chomp)
  #   puts "thank you #{player1.name} and #{player2.name}"
  #   puts "you both have #{player1.lives} lives left."

  #   @players = [
  #     player1.name, player2.name
  #   ]
  #   # puts players
  #   @starting_player_index = rand(@players.count)

  # end

  # def set_starting_player
  #   starting_player = @players[@starting_player_index]
  #   puts "#{starting_player} is up first!"
  # end
  
  
  def play
    
    puts "playing game"

    turn = 1
    while true
      turn = (turn + 1) % 2
      puts "this turn belongs to Player #{turn + 1}"
      challenge(@players[turn])
      puts "Number of lives remaining is #{@players[turn].lives}"

      if @players[turn].lives == 0
        puts "You such the most"
        break
      end

    end
  end

  def challenge(player)
    # a = (0..20).to_a.sample
    # b = (0..20).to_a.sample
    a = rand(0..20)
    b = rand(0..20)
    puts "What is the sum of #{a} and #{b}"
    userInput = gets.chomp
    if userInput.to_f == a + b
      puts "You got correct answer!"
    else
      puts "You suck"
      player.lives -= 1
    end
  end

end

