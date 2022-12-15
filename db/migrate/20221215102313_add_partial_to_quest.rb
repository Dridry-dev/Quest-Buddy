class AddPartialToQuest < ActiveRecord::Migration[7.0]
  def change
    add_column :quests, :partial, :string
  end
end
