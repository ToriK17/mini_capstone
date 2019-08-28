class Api::ProductsController < ApplicationController
  def products_action
    @product = Product.all
    render 'all_products.json.jb'
  end
end
