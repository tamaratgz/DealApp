class Poll < ApplicationRecord
  belongs_to :user
  belongs_to :project, optional: true

  validates :title, presence: true
  validates :description, presence: true
  validates :user, presence: true
  validates :deadline, presence: true
end
