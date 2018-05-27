Rails.application.routes.draw do
  
  namespace :api do
    get "/product_url" => "products#product_action"
  end 
end
