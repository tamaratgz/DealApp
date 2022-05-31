class Poll < ApplicationRecord
  belongs_to :user
  belongs_to :project, optional: true
  has_many :answers

  validates :title, presence: true
  validates :description, presence: true
  validates :user, presence: true
  validates :deadline, presence: true
end
