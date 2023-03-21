class ProductsController < ApplicationController
  before_action :authenticate_customer!
  def index
    @products = Product.all.order(:id)
  end
  def show
  @product = Product.find(params[:id])

  end

  # GET /product/new
  def new
    @product = Product.new
    render :new
  end

  # GET /product/1/edit
  def edit
  end

  # POST /product
  def create
  end

  # PATCH/PUT /product/1
  def update
  end

  # def reduce
  #   product = Product.find(params[:id])
  #   product.update_attribute(:count, product.count - 1)
  # end

  # DELETE /product/1
  def destroy
  end

  private

    def product_params
      params.require(:product).permit(:name, :count, :price)
    end
end
