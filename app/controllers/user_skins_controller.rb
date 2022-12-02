class UserSkinsController < ApplicationController
  def new
    @skin = Skin.find(params[:skin_id])
    @user_skin = UserSkin.new
  end

  def create
    @skin = Skin.find(params[:skin_id])

    @user_skin = UserSkin.new(user_skin_params)
    @user_skin.user = current_user
    @user_skin.skin = @skin

    if @user_skin.save
      redirect_to skin_user_skins_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    raise
  end

  private

  def user_skin_params
    raise
    params.require(:user_skin).permit(:selected, :user_id, :skin_id)
    raise
  end
end
