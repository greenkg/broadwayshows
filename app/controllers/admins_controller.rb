class AdminsController < ApplicationController

  def index
    @shows = Show.all
  end

end