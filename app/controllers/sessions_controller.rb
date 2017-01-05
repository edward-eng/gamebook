class SessionsController < ApplicationController
   #this need to be finsihed
  def create
    @user = User.find_by(email: params[:email])

    if @user
      if @user.authenticate(params[:password])
        session[:user] = @user.id
        redirect_to :controller => 'users', :action => 'show'
      else
        @errors = @user.errors.full_messages
        # erb :"/sessions/new"
      end
    else
      @errors = ['login information must be valid']
      # erb :"/sessions/new"
    end
  end

  def delete

  end

end
