class Link < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, :url, presence: true
end
