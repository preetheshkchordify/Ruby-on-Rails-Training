class DesignationsController < ApplicationController
  before_action :authorize_request
  before_action :set_designation, only: %i[show]
  before_action :admin, only: %i[create destroy]


  def index
    
    page = params[:page].to_i || 1
    per_page = params[:length].to_i || 10
    offset = (page - 1) * per_page
    order_column_index = params[:order]['0'][:column].to_i
    order_column_direction = params[:order]['0'][:dir]
    search = params[:search][:value].downcase.strip


    sortable_columns = ['name', 'code']

    if order_column_index >= 0 && order_column_index < sortable_columns.length
      column_name = sortable_columns[order_column_index]
    else
      column_name = 'id'
    end


    if order_column_direction == 'asc'
      order_direction = :asc
    else
      order_direction = :desc
    end
    @total_count = Designation.all.count
    if search.present?
      @designation = Designation.order("#{column_name} #{order_direction}").offset(offset).limit(per_page).where("lower(name) LIKE ? OR lower(code) LIKE ?", "%#{search}%", "%#{search}%")
    else
      @designation = Designation.order("#{column_name} #{order_direction}").offset(offset).limit(per_page)
    end
    render json: {
      data: @designation,
      recordsTotal: @total_count ,
      recordsFiltered: @total_count
    }

  end

  def active
    @designation = Designation
    render json: { data: @designation}
  end

  def create
    @designation = Designation.new(designation_params)
    if @designation.save
      render json: @designation, status: :created
    else
      render json: { errors: @client.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def show
    render json: @designation, status: :ok
  end

  def destroy
    @designation.destroy
    render json: { message: 'Status updated'}
  end
  
  private

  def set_designation
    @designation = Designation.find_by(id: params[:id])
    if !@designation.present?
      render json: { message: 'Cannot find the designation' }, status: :not_found
    end
  end

  def admin
    @designation = Designation.find_by(id: params[:id])
    @role = @current_user.roles&.first&.name
    if @role == 'user'
      render json: { message: 'You have no access' }
    end
  end

  def designation_params
    params.permit(:name, :code)
  end

end
