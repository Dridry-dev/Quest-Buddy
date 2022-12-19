class SkillsController < ApplicationController
  def index
    @user_skills = UserSkill.where(user: current_user).order(:skill_id)
    @skills = Skill.all.order(:id)
  end
end
