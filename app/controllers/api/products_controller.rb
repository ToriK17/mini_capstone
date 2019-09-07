class Api::ProductsController < ApplicationController

  def index
    @products = Product.all

    if params[:name]
      @products = Product.where("name iLIKE ?", "%#{params[:name]}%")
    end 
    
    if params[:price]
      @products = Product.where("price > ?", "#{params[:price]}")
    end 

    if params[:order]
      @products = Product.all.order("#{params[:order]}": :desc)
    end   

    if params[:count]
      @count = Product.count
      render json: {message: @count}
    else  
    render 'index.json.jb'
    end

  end


  def show
    @product = Product.find(params[:id])
    render 'show.json.jb'
  end


  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      image_url: params[:image_url]
    )
    if @product.save
      render 'show.json.jb'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find(params[:id])
    
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.image_url = params[:image_url] || @product.image_url

    if @product.save
      render 'show.json.jb'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity #422
    end
  end 

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    render json: {message: "Product sent to the void"}
  end

end 
  