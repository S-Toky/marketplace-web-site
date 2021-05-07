class PicturesController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @product.pictures.attach(params[:pictures])
    redirect_to(product_path(@product))
  end
end
