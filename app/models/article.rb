class Article < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: true
  has_rich_text :content
  has_many :comments
  belongs_to :user
end