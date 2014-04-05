class User < ActiveRecord::Base
  has_many :scores
  has_many :answers
  has_many :quizzes, through: :scores
  validates :email, presence: :true, uniqueness: :true 
  has_secure_password
  validates :password_digest, presence: :true
end
