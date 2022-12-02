class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :user_skills, dependent: :destroy
  has_many :skills, through: :user_skills
  has_many :user_skins, dependent: :destroy
  has_many :skins, through: :user_skins
  has_many :user_goals, dependent: :destroy
  has_many :goals, through: :user_goals
  has_many :user_quests, dependent: :destroy
  has_many :quests, through: :user_quests

  def rank_for(quest)
    (quest.user_goals.where(user: self).count / 3) + 1
  end

  def show_selected_skin
    if user_skins
      user_skins.find_by(selected: true).skin
    end
  end

  # validates :gold, presence: true, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { in: 0..1_000_000 }
end
