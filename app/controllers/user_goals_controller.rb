class UserGoalsController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @quest = Quest.find(params[:quest_id])
    @goal = @quest.goals.order(:score).first
  end

  def create
    @user_goal = UserGoal.new(user_goal_params)
    @goal = Goal.find(params[:goal_id])
    @user_goal.user = current_user
    if @user_goal.save
      format.html { redirect_to category_quest_user_quest_path(@user_goal) }
      format.json
    else
      format.html { render :new, status: :unprocessable_entity }
      format.json
    end
  end

private

  def user_goal_params
    params.require(:user_goal).permit(:user_id, :goal_id)
  end

end
