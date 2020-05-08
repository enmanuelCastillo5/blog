class Article < ApplicationRecord
  has_many :comments
  validates :title, :content, presence: true
  validates :title, uniqueness: true
end