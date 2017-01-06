class FriendshipsController < ApplicationController
  def create
    Friendship.create(params[:friends].permit!)
     redirect_to :controller => 'users', :action => 'show', id: session[:users]
  end

  private
    def friendship_params
      params.require(:friendship).permit(:accepting_id, :requesting_id)
    end
end
