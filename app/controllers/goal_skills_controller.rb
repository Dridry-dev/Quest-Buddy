class GoalSkillsController < ApplicationController
  def new
    @skill = Skill.find(params[:skill_id])
    @goal_skill = GoalSkill.new
  end

  def create
    @skill = Skill.find(params[:skill_id])
    @goal_skill = GoalSkill.new(goal_skill_params)
    @goal_skill.user = current_user
    @goal_skill.skill = @skill
    if @goal_skill.save
      redirect_to @skill
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @goal_skill = GoalSkill.find(params[:id])
    @skill = @goal_skill.skill
    if @goal_skill.update(goal_skill_params)
      redirect_to root_path(@skill)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def goal_skill_params
    params.require(:goal_skill).permit(:selected, :goal_id, :skill_id)
  end
end
