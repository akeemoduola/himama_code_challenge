class HomeController < ApplicationController
  def index
  	if current_user.admin
      redirect_to timelogs_path
    end
  end
end
