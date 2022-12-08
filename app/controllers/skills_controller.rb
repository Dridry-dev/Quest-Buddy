class SkillsController < ApplicationController
  def index
    @user_skills = UserSkill.all
    @skills = Skill.all
  end
end
