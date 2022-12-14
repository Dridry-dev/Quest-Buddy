class CreateQuests < ActiveRecord::Migration[7.0]
  def change
    create_table :quests do |t|
      t.string :name
      t.references :category, null: false, foreign_key: true
      t.integer :rank
      t.decimal :price

      t.timestamps
    end
  end
end
