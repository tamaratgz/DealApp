class User < ApplicationRecord
  # Also available: user_signed_in? and current_user

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :polls, dependent: :destroy
  has_many :projects, dependent: :destroy
  has_one_attached :avatar
end
