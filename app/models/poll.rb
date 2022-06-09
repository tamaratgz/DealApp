class Poll < ApplicationRecord
  belongs_to :user
  belongs_to :project, optional: true
  has_many :answers, dependent: :destroy
  has_many :votes, through: :answers
  accepts_nested_attributes_for :answers, reject_if: :all_blank, allow_destroy: true

  validates :title, presence: true
  validates :user, presence: true
  validates :deadline, presence: true

  def votes_count
    votes.count
  end

  def user_voted?(user_or_name)
    if user_or_name.class == User
      !votes.where(user: user_or_name).empty?
    elsif user_or_name.class == String
      !votes.where(name: user_or_name).empty?
    end
  end
end
