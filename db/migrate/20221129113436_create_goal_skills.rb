class CreateGoalSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :goal_skills do |t|
      t.references :skill, null: false, foreign_key: true
      t.references :goal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
