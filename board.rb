# frozen_string_literal: true

require './display'

# The board holds 4 pegs a.k.a the code
class Board
  attr_reader :code, :guesses

  def initialize
    @code = [2, 4, 4, 6]
    @guesses = Array.new(4, nil)
  end

  def count_exact_guesses(guess)
    code.each_index { |i| @guesses[i] = true if guess[i] == @code[i] }
  end

  def count_missed_guesses(guess)
    guess.each_with_index do |elem, i|
      next if @guesses[i] == true

      @guesses[i] = false if code.include?(elem) && guess.count(elem) <= @code.count(elem)
    end
  end

  def count_guesses(guess)
    count_exact_guesses guess
    count_missed_guesses guess
    @guesses
  end
end
