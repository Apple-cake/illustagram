class IllustrationsController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @illustrations = Illustration.includes(:user).page(params[:page]).per(6).order("created_at DESC")
  end
  def new
    @illustration = Illustration.new
  end
  def create
    Illustration.create(image: illustration_params[:image], text: illustration_params[:text], user_id: current_user.id)
  end
  def destroy
    illustration = Illustration.find(params[:id])
    if illustration.user_id == current_user.id
      illustration.destroy
    end
  end
  def edit
    @illustration = Illustration.find(params[:id])
  end
  def update
    illustration = Illustration.find(params[:id])
    if illustration.user_id == current_user.id
      illustration.update(illustration_params)
    end
  end
  private
  def illustration_params
    params.require(:illustration).permit(:image, :text)
  end
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
