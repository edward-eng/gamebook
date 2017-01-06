class FriendshipsController < ApplicationController
  def create
    Friendship.create(params[:friends])
     redirect_to :controller => 'users', :action => 'show', id: session[:users]
  end
end
