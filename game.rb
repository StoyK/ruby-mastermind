# frozen_string_literal: true

require_relative 'board'
require_relative 'display'

# The game class combines all the logic required for the game
class Game
  attr_accessor :board

  def initialize
    @board = Board.new
  end

  def user_input
    puts 'Enter 4 choices: '
    user_code = gets.chomp.split('').map!(&:to_i)
    if user_code.length == 4 && user_code.all? { |elem| elem.between?(1, 6) }
      user_code
    else
      puts 'Invalid input'
      user_input
    end
  end

  def game_loop
    input = user_input

    guesses = board.count_guesses(input).each { |elem| print Display.clue_colors(elem) }
    puts

    input.each { |elem| print Display.code_colors(elem) }
    puts

    game_loop if guesses.any? { |elem| elem != true }
  end
end
