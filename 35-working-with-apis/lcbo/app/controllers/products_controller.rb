class ProductsController < ApplicationController

  def index
    key = ENV["LCBO_KEY"]

    page = params[:page] || 1
    response = HTTParty.get("https://lcboapi.com/products?page=#{page}&access_key=#{key}")
    parsed_body = JSON.parse(response.body)

    @products.each do |product|
      Product.create(product)
    end

    @products = parsed_body["result"]

    respond_to do |format|
      format.html { render :index }
      format.json { render json: { products: @products } }
    end
  end

end
