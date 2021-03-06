class ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @product = Product.new(
      name: params[:name], 
      description: params[:description], 
      price: params[:price], 
      supplier_id: params[:supplier_id]
      )
    @product.save
    redirect_to "/products"
  end

  def edit
    @product = Product.find(params[:id])
    render "edit.html.erb"
  end

  def show
    @product = Product.find(params[:id])
    render "show.html.erb"
  end

  def update
    @product = Product.find(params[:id])
    @product.update(
      name: params[:name], 
      description: params[:description], 
      price: params[:price], 
      supplier_id: params[:supplier_id]
      )
    redirect_to "/products/"
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to "/products"
  end
end
