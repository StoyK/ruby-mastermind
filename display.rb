# frozen_string_literal: true

require 'colorize'

# This is a utility module for coloring
module Display
  def self.clue_colors(clue)
    {
      true => '  '.colorize(background: :white),
      false => '  '.colorize(background: :black)
    }[clue]
  end

  def self.code_colors(code)
    {
      1 => '  '.colorize(background: :red),
      2 => '  '.colorize(background: :light_blue),
      3 => '  '.colorize(background: :pink),
      4 => '  '.colorize(background: :green),
      5 => '  '.colorize(background: :purple),
      6 => '  '.colorize(background: :orange)
    }[code]
  end
end
