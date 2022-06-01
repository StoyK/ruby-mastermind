# frozen_string_literal: true

require_relative 'game'

game = Game.new

game.game_loop

puts
puts 'You found it!'
game.board.code.each { |elem| print Display.code_colors(elem) }
