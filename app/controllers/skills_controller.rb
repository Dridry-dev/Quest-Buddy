class SkillsController < ApplicationController
  def index
    @user_skills = UserSkill.all.order(:skill_id)
    @skills = Skill.all.order(:id)
  end
end
