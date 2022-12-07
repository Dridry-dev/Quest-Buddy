class AddDefaultValueToMaxPoint < ActiveRecord::Migration[7.0]
  def change
    change_column :skills, :max_point, :integer, default: 99
  end
end
