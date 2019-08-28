class Api::ProductsController < ApplicationController
  def products_action
    @product = Product.all
    render 'all_products.json.jb'
  end

  def single_product
    @single_product = Product.first
    render 'single_product.json.jb'  
  end
end
