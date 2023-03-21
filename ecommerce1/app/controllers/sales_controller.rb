class SalesController < ApplicationController
  def index
    @sale=Sale.new
    @sale.product_id = params[:product_id]
    @sale.customer_id = current_customer.id
    @sale.price = params[:price]
    @sale.count = 1
    # binding.pry
  end
  def create
    @sale = Sale.new
    @sale.product_id = params[:product_id]
    @sale.price = params[:price]
    @sale.count = params[:count]
    @sale.customer_id = current_customer.id
    if params[:payment_status] == "completed"
      # binding.pry
      Product.find(@sale[:product_id]).update_attribute(:count,@sale.product.count - 1)

      # binding.pry
      redirect_to products_path, notice: "Order Placed"
      @sale.save
    else
      redirect_to products_path, notice: "Payment Failed"
    end
  end

  private

  def sale_params
    params.permit(:product_id, :customer_id, :count, :price)
  end
end
