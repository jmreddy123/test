class OrdersController < ApplicationController
def new
end
def create
@products = Product.search(params[:search])
end
def search
@products = Product.search(params[:search])
if request.xhr
end
end
end
