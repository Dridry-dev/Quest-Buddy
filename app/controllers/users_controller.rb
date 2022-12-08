class UsersController < ApplicationController
  before_action :set_user, only: %i[edit]
  def show
    @quest = Quest.new
    @user_skills = UserSkill.all
    @skills = Skill.all
    @skins = Skin.all
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user)
    if @user.save
      redirect_to root
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :gold)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
