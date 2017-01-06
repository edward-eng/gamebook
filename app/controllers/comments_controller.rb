class CommentsController < ApplicationController
  def create

    # game_id = params[:id]

    # commenter_id = session[:users]

    if session[:users]
      @comment = Comment.new(body: params[:body], game_id: params[:id], commenter_id: session[:users])
      if @comment.save
        redirect_to "/games/#{params[:id]}"
      else
        #give errors and return to page
      end

    else
      redirect_to game_path
    end
  end

  private

  # def comment_params
  #   params.require(:comment).permit(:body, :game_id, :commenter_id)
  # end
end
