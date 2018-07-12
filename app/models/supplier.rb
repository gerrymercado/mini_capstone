class Supplier < ApplicationRecord

  # def products
  #   Product.where(supplier_id: id)
  # end 

  has_many :products 
  #returns a products array, assumes product has a foreign key (supplier_id)
end
