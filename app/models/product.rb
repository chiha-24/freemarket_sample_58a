class Product < ApplicationRecord
  # バリデーション
  validates :name,             length:    {maximum: 40},         presence: true
  validates :text,             length:    {maximum: 1000},       presence: true
  validates :category_index,   exclusion: {in: %w(--- nil ) },   presence: true
  validates :fresh_status ,    exclusion: {in: %w(---) },        presence: true
  validates :deliver_way,      exclusion: {in: %w(---)}
  validates :deliver_person,   exclusion: {in: %w(---)}
  validates :from_area,        exclusion: {in: %w(---)}
  validates :deliver_leadtime, exclusion: {in: %w(---)}
  validates :price,            numericality: [greater_than: 300, less_than: 10000000 ]
  # アソシエーション
  belongs_to :user,                             optional:true
  belongs_to :brand,                            optional:true
  has_many :product_images,                     dependent: :destroy
  accepts_nested_attributes_for :product_images
  
  # カテゴリ関係
  has_one :category_index
  has_one :bigcategory
  has_one :smallcategory
  has_one :size
end
