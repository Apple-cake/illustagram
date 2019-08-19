class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @illustrations = current_user.illustrations.page(params[:page]).per(6).order("created_at DESC")
  end
end
