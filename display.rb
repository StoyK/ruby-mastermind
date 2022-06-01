# frozen_string_literal: true

require 'colorize'

# This is a utility module for coloring
module Display
  def self.clue_colors(clue)
    {
      true => '   '.colorize(background: :white),
      false => '   '.colorize(background: :light_black),
      nil => '   '.colorize(background: :black)
    }[clue]
  end

  def self.print_colors
    print ' 1 '.colorize(color: :black, background: :red)
    print ' 2 '.colorize(color: :black, background: :light_blue)
    print ' 3 '.colorize(color: :black, background: :cyan)
    print ' 4 '.colorize(color: :black, background: :yellow)
    print ' 5 '.colorize(color: :black, background: :light_yellow)
    print ' 6 '.colorize(color: :black, background: :green)
    puts
  end

  def self.code_colors(code)
    {
      1 => ' 1 '.colorize(color: :black, background: :red),
      2 => ' 2 '.colorize(color: :black, background: :light_blue),
      3 => ' 3 '.colorize(color: :black, background: :cyan),
      4 => ' 4 '.colorize(color: :black, background: :yellow),
      5 => ' 5 '.colorize(color: :black, background: :light_yellow),
      6 => ' 6 '.colorize(color: :black, background: :green)
    }[code]
  end
end
