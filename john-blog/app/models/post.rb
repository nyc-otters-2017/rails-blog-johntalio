class Post < ActiveRecord::Base
  belongs_to :user

  validates :title, :description, presence: true
  validates :title, :description, uniqueness: true
  validates :title, length: {minimum: 1}
  validates :description, length: {in: 5..150}
end
