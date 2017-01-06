class FriendshipsController < ApplicationController
  def create
    Friendship.create(params[:friends].permit!)
     redirect_to :controller => 'users', :action => 'show', id: session[:users]
  end

  def update
    pending = Friendship.find_by(requesting_id: params[:friends][:accepting_id],accepting_id: params[:friends][:requesting_id])
    pending.pending_request = false
    pending.save
    redirect_to :controller => 'users', :action => 'show', id: session[:users]
  end

  private
    def friendship_params
      params.require(:friendship).permit(:accepting_id, :requesting_id)
    end
end


