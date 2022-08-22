class Category < ApplicationRecord
    has_one_attached :image
    has_many :products
    validates :name, presence: true, length: { maximum: 50, minimum: 6 }, uniqueness: { case_sensitive: false }
   
end
