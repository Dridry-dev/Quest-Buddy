class UserSkin < ApplicationRecord
  belongs_to :user
  belongs_to :skin
  # before_save :set_primary
  before_update :set_primary

  private
  def set_primary
    UserSkin.where(selected: true).update_all(selected: false)
  end
end
