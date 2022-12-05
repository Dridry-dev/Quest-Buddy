class ChangePriceToBeIntegerInSkin < ActiveRecord::Migration[7.0]
  def change
    change_column :skins, :price, :integer
  end
end
