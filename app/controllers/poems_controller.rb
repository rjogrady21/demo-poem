class PoemsController < ApplicationController

  def show
    @poem = Poem.find(params[:id])
  end

  def index
    @poems = Poem.all
  end

  private

end
