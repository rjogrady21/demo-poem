class PoetsController < ApplicationController
 def show
    @poet = Poet.find(params[:id])
  end

  def index
    @poets = Poet.all
  end
end
