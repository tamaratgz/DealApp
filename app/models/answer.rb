class Answer < ApplicationRecord
  belongs_to :poll
  has_many :votes

  validates :title, presence: true
  validates :poll, presence: true
end
