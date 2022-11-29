class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.references :quest, null: false, foreign_key: true
      t.integer :reward
      t.text :partial
      t.integer :score
      t.integer :rank

      t.timestamps
    end
  end
end
