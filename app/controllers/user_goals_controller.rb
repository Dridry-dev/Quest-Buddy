class UserGoalsController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @quest = Quest.find(params[:quest_id])
    @goal = @quest.goals.order(:threshold).first
    @last_goal = @quest.goals.order(:threshold).last
    @user_quest = UserQuest.where(user: current_user, quest: @quest).last
  end

  def create
    @quest = Quest.find(params[:quest_id])
    goal_ids = @quest.goals.order(:threshold).map(&:id)
    old_user_goal = current_user.user_goals.where(goal_id: goal_ids).last

    # il faut en db que la quete ait des skills
    # skills = @quest.skills
    # skills.each do |skill|
    #   user_skill = current_user.user_skills.find(skill.id)
    #   user_skill.level += 1
    #   user_skill.save
    # end

    if old_user_goal.nil?
      @user_goal = UserGoal.create(goal: @quest.goals.order(:threshold).first, user: current_user)
      current_user.gold += @quest.reward
      current_user.save
    else
      old_goal = old_user_goal.goal
      goal_id = goal_ids[goal_ids.index(old_goal.id) + 1]
      # if goal_ids.index(old_goal.id) == 2
      # creation_userskill(Goal.find(goal_id))
      # end
      @user_goal = UserGoal.create(goal_id: goal_id, user: current_user)
      @next_goal = Goal.find(goal_id)
    end
    respond_to do |format|
      format.html { redirect_to category_quest_user_quest_path(@user_goal) }
      format.json { render json: @next_goal }
    end
  end

  def creation_userskill(goal)
    goal.skills.each do |skill|
      UserSkill.create(user: current_user, skill: skill)
    end
  end
end
