class Link < ApplicationRecord
  belongs_to :user
  validates :title, :url, presence: true
end
