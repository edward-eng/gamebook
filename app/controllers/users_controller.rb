class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
   @user = User.new(user_params)

   if @user.save
     session[:users] = @user.id
     redirect_to :controller => 'games', :action => 'index'
   else
     @errors = @user.errors.full_messages
     render'/users/new'
   end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
