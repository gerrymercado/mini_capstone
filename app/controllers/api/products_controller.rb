class Api::ProductsController < ApplicationController

  def index 
    @products = Product.all

    render "index_view.json.jbuilder"
  end 

  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render "show.json.jbuilder"
  end 

  def create
    #creates a new product

    @product = Product.create(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
      )
    render "show.json.jbuilder"
  end

  def update
    #find the recipe to update
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    #tell it what to update
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description

    @product.save
    render "show.json.jbuilder"
  end 

end
