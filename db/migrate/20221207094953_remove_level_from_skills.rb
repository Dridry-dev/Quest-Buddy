class RemoveLevelFromSkills < ActiveRecord::Migration[7.0]
  def change
    remove_column :skills, :level, :integer
  end
end
