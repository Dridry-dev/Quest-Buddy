class AddRewardAndDescriptionToQuests < ActiveRecord::Migration[7.0]
  def change
    add_column :quests, :description, :text
    add_column :quests, :reward, :integer
  end
end
