module SavedGamesHelper
  def saved_game?(game_id)
    @user = User.find(session[:users])
    games_ids = @user.saved_games.map {|saved_game| saved_game.game_id.to_i}
    games_ids.include?(game_id.to_i)
  end
end
