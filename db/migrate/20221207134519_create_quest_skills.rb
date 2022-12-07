class CreateQuestSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :quest_skills do |t|
      t.references :quest, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
