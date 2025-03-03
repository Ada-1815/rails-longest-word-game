class GamesController < ApplicationController

  def new
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end

  def score
    word.chars.all? { |letter| word.count(letter) <= grid.count(letter) }
  end

end
