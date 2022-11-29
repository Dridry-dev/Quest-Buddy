class CreateUserSkins < ActiveRecord::Migration[7.0]
  def change
    create_table :user_skins do |t|
      t.references :user, null: false, foreign_key: true
      t.references :skin, null: false, foreign_key: true
      t.boolean :selected

      t.timestamps
    end
  end
end
