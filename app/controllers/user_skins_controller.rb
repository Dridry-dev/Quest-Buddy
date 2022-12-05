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
    current_user.gold -= @skin.price
    current_user.save
    if @user_skin.save
      redirect_to @skin
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @user_skin = UserSkin.find(params[:id])
    @skin = @user_skin.skin
    if @user_skin.update(user_skin_params)
      redirect_to root_path(@skin)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_skin_params
    params.require(:user_skin).permit(:selected, :user_id, :skin_id)
  end

end
