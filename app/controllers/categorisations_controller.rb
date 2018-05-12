class CategorisationsController < ApplicationController
  def index
    @categoirsations = Categorisation.all
  end

  def show
  end
end
