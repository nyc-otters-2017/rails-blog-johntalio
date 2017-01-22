class User < ActiveRecord::Base
  has_many :posts

  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true
  validates :username, length: {in: 4..10}
  validates :password, length: {minimum: 6}
end
