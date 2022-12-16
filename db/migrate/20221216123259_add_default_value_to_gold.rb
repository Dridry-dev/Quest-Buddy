class AddDefaultValueToGold < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :gold, :integer, default: 100
  end
end
