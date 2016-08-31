class ProductsController < ApplicationController
def new
    @product = Product.new
    @products = Product.all
end
def create
    @newproduct = Product.new(product_params)
    @products = Product.all
if @newproduct.save
   respond_to do |format|
   format.js {}
   end
end
end
def product_params
    params.require(:product).permit(:product_name, :product_sku, :price)
end
end
