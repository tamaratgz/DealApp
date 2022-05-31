class Vote < ApplicationRecord
  belongs_to :answer
  belongs_to :user, optional: true
end
