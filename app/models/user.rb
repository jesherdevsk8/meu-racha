class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  VALID_EMAIL_REGEX = /\A[a-z0-9._]+@[a-z0-9]+\.[a-z]{2,3}+(\.[a-z]{2,3})?(\.[a-z]{2})?\z/

  validates :name, presence: true
  validates :email, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
end
