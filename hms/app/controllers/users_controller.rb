class UsersController < ApplicationController
	before_action :check_session, only: [:index, :new]

  def index
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
  end

  def new
    @user = User.new
  end 

  
  def create 
  	@user = User.new(user_params)
  	if user_params[:password] == user_params[:confirmpassword]
      password = Digest::SHA1.hexdigest(user_params[:password])
      @user.password = password
  	  if @user.save
        session[:current_user] = @user.id
        redirect_to dashboard_path
      else
        flash[:notice]= @user.errors.full_messages
        session[:current_user] = nil
        redirect_to :back
      end  
    else
      flash[:notice]= "Password and confirm password doesn't match"
      redirect_to :back 
    end   
  end

  def check_session
    if session[:current_user].present?
       redirect_to  dashboard_path  and return
    
    end
  end  

              
  def authenticate
    @user = User.find_by(email: user_params[:email])
    if @user
      password = Digest::SHA1.hexdigest(user_params[:password])
      if @user.password == password
      	session[:current_user] = @user.id
        redirect_to dashboard_url and return
      else 
        flash[:notice]= "Invalid Password"
        redirect_to :back     
      end  
    else
        flash[:notice]= "Invalid Email"
        redirect_to :back   
    end
  end 

  def signout
    session[:current_user] = nil
    redirect_to users_path	
  end

private
  def user_params
  	params.require(:user).permit(:firstname, :lastname, :email, :password, :confirmpassword)
  end
end