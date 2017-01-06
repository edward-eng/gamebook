class SavedGamesController < ApplicationController
  def create
    @user = User.find(session[:users])
    user_id = @user.id
    game_id = params[:game_id]
    SavedGame.create(user_id: user_id, game_id: game_id)
    redirect_to @user
  end
end
