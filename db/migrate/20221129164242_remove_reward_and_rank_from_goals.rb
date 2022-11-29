class RemoveRewardAndRankFromGoals < ActiveRecord::Migration[7.0]
  def change
    remove_column :goals, :reward, :integer
    remove_column :goals, :rank, :integer
  end
end
