class Product < ApplicationRecord

  belongs_to :supplier
  
  has_many :images


  has_many :category_products
  has_many :categories, through: :category_products

  has_many :carted_products 
  has_many :orders, through: :carted_products 

  validates :price, numericality: {only_integer: true }
  validates :price, numericality: {greater_than: 0 }
  validates :price, presence: true

  validates :name, presence: true
  validates :name, uniqueness: true

  validates :description, length: {in: 10..500}



  



 
  def is_discounted?
    price < 100
  end 

  def tax
    price * 0.09
  end 

  def total
    price + tax
  end 

end 


