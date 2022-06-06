class Answer < ApplicationRecord
  belongs_to :poll
  has_many :votes, dependent: :destroy

  validates :title, presence: true
  validates :poll, presence: true

  def votes_count
    votes.count
  end

  def votes_percentage
    # return 0 if poll.votes_count == 0

    votes_count / poll.votes_count.to_f * 100
  end
end
