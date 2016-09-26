
class PagesController < ApplicationController
  def home
  end

  def dashboard
    @user = current_user
    @places = @user.places
    @reviews = @user.reviews
  end
end
