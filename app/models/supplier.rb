class Supplier < ApplicationRecord
  def products
    Product.where(suplier_id: id)
  end

end
