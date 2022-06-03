class Answer < ApplicationRecord
  belongs_to :poll
  has_many :votes, dependent: :destroy

  validates :title, presence: true
  validates :poll, presence: true

  def votes_count
    votes.count
  end
end
