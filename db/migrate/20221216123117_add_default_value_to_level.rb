class AddDefaultValueToLevel < ActiveRecord::Migration[7.0]
  def change
    change_column :user_skills, :level, :integer, default: 1
  end
end
