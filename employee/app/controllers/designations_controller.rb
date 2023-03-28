class DesignationsController < ApplicationController
  before_action :authorize_request
  before_action :set_designation, only: %i[show]
  before_action :admin, only: %i[create destroy]


  def index
    @designation = Designation.all
    render json: @designation, status: :ok
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
    @user = @current_user.roles.first.name
    if @user == 'user'
      render json: { message: 'You have no access' }
    end
  end

  def designation_params
    params.require(:designation).permit(:name, :code)
  end

end
