class Product < ApplicationRecord

  validates :name, presence: true, length: { maximum: 100, minimum: 6 }
  validates :quantity, length: { maximum: 1000, miximum: 1}, presence: true
  validates :price, presence: true

  belongs_to :category
  has_one :productdetail
  has_one_attached :image

end
