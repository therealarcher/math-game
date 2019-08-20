require './player'

class Game

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @players = [@player1, @player2]
  end
  
  def play
    
    turn = 1
    while true
      turn = (turn + 1) % 2 #to switch turns
      puts "this turn belongs to Player #{turn + 1}"
      challenge(@players[turn])
      puts "Number of lives remaining is #{@players[turn].lives}"
      puts "*" * 30

      if @players[turn].lives == 0
        puts "You have no more lives."
        which_player_wins(@players)
        break
      end

    end
  end

  def challenge(player)
    num1 = rand(0..20)
    num2 = rand(0..20)
    puts "What is the sum of #{num1} and #{num2}"
    userInput = gets.chomp
    if userInput.to_f == num1 + num2
      puts "You got correct answer!"
    else
      puts "Sorry, wrong answer"
      player.lives -= 1
    end
  end

  def which_player_wins(players)
    # puts "testing testing"
    players.select do |player|
      if player.lives != 0
      puts "#{player.name} wins"
      end
    end
  end

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