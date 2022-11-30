class SkinsController < ApplicationController
  before_action :set_skin, only: %i[show edit update]

  def index
    @skins = Skin.all
  end

  def show
  end

  def edit
  end

  def update
  end

  private

  def skin_params
    params.require(:skin).permit(:title, :body, :photo)
  end

  def set_skin
    @skin = Skin.find(params[:id])
  end
end
