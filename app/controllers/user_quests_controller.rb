class UserQuestsController < ApplicationController
  def create
    @userquest = UserQuest.new(params[:userquest])
    if @userquest.save
      redirect_to new_category_quest_user_goal_path(@userquest)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @userquest = UserQuest.find(params[:id])
  end
end
