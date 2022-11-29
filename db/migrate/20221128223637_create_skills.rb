class CreateSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.text :description
      t.integer :max_point

      t.timestamps
    end
  end
end
