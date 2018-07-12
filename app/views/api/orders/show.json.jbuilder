
json.partial! @order, partial: 'order', as: :order

# json.id @order.id

# json.user do
#   json.partial! @order.user, partial: "api/users/user", as: :user
# end

# # json.product do
# #   json.partial! @order.product, partial: "api/products/product", as: :product
# # end

# json.formatted do
#   json.subtotal number_to_currency(@order.subtotal) 
#   json.tax number_to_currency(@order.tax) 
#   json.total number_to_currency(@order.total)
#   json.created_at @order.friendly_created_at
# end
  
 