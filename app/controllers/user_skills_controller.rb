class UserSkillsController < ApplicationController
  def index
    @userquest = UserQuest.find(params[:user_quest_id])
    @quest = @userquest.quest

    @skills = @quest.skills
    @skills.each do |skill|
      user_skill = current_user.user_skills.find_by(skill: skill)
      user_skill.level += 1
      user_skill.save
    end

    redirect_to @userquest
  end
end
