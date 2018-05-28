Rails.application.routes.draw do
  
  namespace :api do
    get "/products_url" => "products#products_action"
  end 
end
