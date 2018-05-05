class PoemsController < ApplicationController

  def show
    @poem = Poem.find(params[:id])
    @poem_body = @poem.body
    @poem_count = @poem_body.count('/n')
  end

  def index
    @poems = Poem.all
  end

  private

end
