class DashboardController < ApplicationController
  def index
  end

  def show
  	@user=User.find_by(id: session[:current_user])
  	
  	redirect_to users_path unless @user
  end 
end
