class Product < ApplicationRecord
  validates :name,           presence: true, length:    {maximum: 40}
  validates :text,           presence: true, length:    {maximum: 1000}
  validates :category_index, presence:true,  exclusion: {in: %w(--- nil ) }
  validates :fresh_status ,  presence: true, exclusion: {in: %w(---) }

  # アソシエーション
  belongs_to :user,                             optional:true
  belongs_to :brand,                            optional:true
  has_many :product_images,                     dependent: :destroy
  accepts_nested_attributes_for :product_images
  has_one :price,                               dependent: :destroy
  accepts_nested_attributes_for :price
  has_one :delivery,                            dependent: :destroy
  accepts_nested_attributes_for :delivery
  
  # カテゴリ関係
  has_one :category_index
  has_one :bigcategory
  has_one :smallcategory
  has_one :size
end
