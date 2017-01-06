class SessionsController < ApplicationController

  def create
    @user = User.find_by(email: params[:user][:email])

    if @user
      if @user.authenticate(params[:user][:password])

        session[:users] = @user.id
        redirect_to :controller => 'games', :action => 'index'
        # redirect_to :controller => 'users', :action => 'show'
      else

        @errors = @user.errors.full_messages

        render "/sessions/new"
      end
    else
      @errors = ['login information must be valid']

      render "/sessions/new"
    end
  end

  def destroy
    session.delete(:users)
    redirect_to root_path
  end

end
