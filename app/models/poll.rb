class Poll < ApplicationRecord
  belongs_to :user
  belongs_to :project, optional: true
  has_many :answers, dependent: :destroy
  accepts_nested_attributes_for :answers, reject_if: :all_blank, allow_destroy: true

  validates :title, presence: true
  validates :description, presence: true
  validates :user, presence: true
  validates :deadline, presence: true
end
