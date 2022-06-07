class Vote < ApplicationRecord
  belongs_to :answer
  belongs_to :user, optional: true

  validate :one_vote_per_poll, :deadline_valid

  def one_vote_per_poll
    if user_id != nil
      unless answer.poll.votes.where(user_id: self.user_id).empty?
        errors.add(:one_vote_per_poll, ":)")
      end
    else
      unless answer.poll.votes.where(name: self.name).empty?
        errors.add(:one_vote_per_poll, ":)")
      end
    end
  end

  def deadline_valid
    if (answer.poll.deadline.to_datetime - DateTime.current) < 0
      errors.add(:deadline_valid, "Poll has ended")
    end
  end
end
1
