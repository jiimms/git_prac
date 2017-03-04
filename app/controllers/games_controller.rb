class GamesController < ApplicationController
  def new
  	@game=Game.new
  end

  def index
  end
end
