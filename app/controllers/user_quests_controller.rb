class UserQuestsController < ApplicationController
  def create
    @userquest = UserQuest.new(userquest_params)
    @quest = @userquest.quest
    @category = @quest.category
    if @userquest.save
      redirect_to new_category_quest_user_goal_path(@category, @quest)
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
