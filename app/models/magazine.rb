class Magazine < ActiveRecord::Base
  validates :status, inclusion: { in: %w(DRAFT SUBMITTED REVIEW PUBLISHED) , message: "%{value} is not a valid status." }
  validates :title, :price, presence: true
  has_many :magazine_pages



end
