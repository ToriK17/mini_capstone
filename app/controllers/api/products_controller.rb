class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'index.json.jb'
  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'show.json.jb'  
  end

  # def any_product
  #   # user_input = params[:choice_product]
  #   @message = "Your product is "
  #   render 'choice_product.json.jb'
  # end

  def create
    @product = Product.new( 
      name: params[:name], 
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
      )
    @product.save
    render 'show.json.jb'
  end

  def update
    @product = Product.find(params[:id])
    #use .find for id only but works the same

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    @product.save

    render 'show.json.jb'
  end

  def destroy
    # don't need to use an instance variable because it's not being passed anywhere
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message:"Product is obliterated"}
  end
end 