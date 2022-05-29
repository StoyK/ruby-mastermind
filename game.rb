# frozen_string_literal: true

require 'colorize'

# The game class combines all the logic required for the game
class Game
  def initialize
    puts 'Testing colorizing'.colorize(color: String.colors.sample, background: String.colors.sample)
  end
end
