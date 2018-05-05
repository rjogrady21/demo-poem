class PoemsController < ApplicationController

  def show
    @poem = Poem.find(params[:id])
    @poem_body = @poem.body.each_line('/n')
  end

  def index
    @poems = Poem.all
  end

  private

end
