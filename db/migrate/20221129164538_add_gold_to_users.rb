class AddGoldToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :gold, :integer
  end
end
