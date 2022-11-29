class AddLevelToSkills < ActiveRecord::Migration[7.0]
  def change
    add_column :skills, :level, :integer
  end
end
