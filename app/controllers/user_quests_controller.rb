class UserQuestsController < ApplicationController
  def create
    @userquest = UserQuest.new(userquest_params)
    if @userquest.save
      redirect_to new_category_quest_user_goal_path(@userquest)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @userquest = UserQuest.find(params[:id])
  end

  private

  def userquest_params
    params.require(:user_quest).permit(:user_id, :quest_id)
  end
end
