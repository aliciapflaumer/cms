# Top-level comment
class Article < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments, dependent: :destroy
  validates :title, :author, :text, presence: true
end
