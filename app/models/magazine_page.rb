class MagazinePage < ActiveRecord::Base
  belongs_to :magazine
  belongs_to :magazine_page_layout, :foreign_key => 'page_layout_id'
  has_many :articles

  validates :page, presence: true, numericality: true
  validates :magazine_id, presence: true
  validates :page_layout_id, presence: true
end
