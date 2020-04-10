#!/usr/bin/env ruby

puts("#{' ' * 6}Welcome!\nLet's Play Tic Tac Toe")

class Board
  # attr_accessor :field

  def initialize
    @field = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def display_board
    puts(
      "\n #{@field[0]} | #{@field[1]} | #{@field[2]}"\
      "\n #{@field[3]} | #{@field[4]} | #{@field[5]}"\
      "\n #{@field[6]} | #{@field[7]} | #{@field[8]}"
    )
  end

  def change_spot(choice, player)
    choice -= 1
    @field[choice] = player == 1 ? 'X' : 'O'
  end
end

# Control game flow
game = Board.new
game.display_board

(1..2).each do |i|
  player = i
  puts("\nPlayer #{i} make your move\n(Choice between 1-9):")
  loop do
    # INPUT validation
    choice = STDIN.gets.chomp.to_i
    if choice.between?(1, 9)
      game.change_spot(choice, player)
      game.display_board
      break
    else
      puts 'Value Invalid, Try again (1-9):'
    end
  end
end

puts("\nPlayer 1 Wins\nCongratulations!")

# ask player to select from available moves.
# inform player if selected move is invalid.
# display board after player move.
