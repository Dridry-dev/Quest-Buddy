class RemovePartialFromGoals < ActiveRecord::Migration[7.0]
  def change
    remove_column :goals, :partial, :text
  end
end
