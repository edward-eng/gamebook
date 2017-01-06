class CommentsController < ApplicationController
  def create
    @user = User.find(session[:users])
    if @user &&
  end
end
