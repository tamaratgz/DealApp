class Answer < ApplicationRecord
  belongs_to :poll

  validates :title, presence: true
  validates :poll, presence: true
end
