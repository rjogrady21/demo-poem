class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @random_poem = Poem.all.sample
  end
end
