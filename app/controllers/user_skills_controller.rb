class UserSkillsController < ApplicationController
  def index
    @userquest = UserQuest.find(params[:user_quest_id])
    @quest = @userquest.quest
    @skills = @quest.skills
    @skills.each do |skill|
      user_skill = UserSkill.where(user: current_user).find_by(skill: skill)
      if user_skill.nil?
        UserSkill.create!(user: current_user, skill: skill)
      else
        user_skill.level += 1
        user_skill.save
      end
    end

    redirect_to @userquest
  end
end
