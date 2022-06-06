class Poll < ApplicationRecord
  belongs_to :user
  belongs_to :project, optional: true
  has_many :answers, dependent: :destroy
  has_many :votes, through: :answers
  accepts_nested_attributes_for :answers, reject_if: :all_blank, allow_destroy: true

  validates :title, presence: true
  validates :description, presence: true
  validates :user, presence: true
  validates :deadline, presence: true

  def votes_count
    votes.count
  end
end
