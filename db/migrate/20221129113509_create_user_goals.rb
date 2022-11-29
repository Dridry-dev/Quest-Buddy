class CreateUserGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :user_goals do |t|
      t.references :user, null: false, foreign_key: true
      t.references :goal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
