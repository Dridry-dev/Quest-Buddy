class AddLevelToUserSkills < ActiveRecord::Migration[7.0]
  def change
    add_column :user_skills, :level, :integer, default: 0
  end
end
