class AddDefaultValueToSelected < ActiveRecord::Migration[7.0]
  def change
    change_column :user_skins, :selected, :boolean, default: false
  end
end
