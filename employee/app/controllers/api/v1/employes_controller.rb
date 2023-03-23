class Api::V1::EmployesController < ApplicationController
  before_action :set_employ, only: %i[show update destroy]

  def index
    render json: { message: 'EmployeeList', data: Employe.all.order(:id) }, status: :ok
  end

  def show
    render json: { message: 'EmployeeDetails', data: @employ }, status: :ok
  end

  def create
    employ = Employe.new(employ_params)
    if employ
      employ.save
      if employ.errors.present?
        render json: { message: employ.errors.full_messages }, status: :bad_request
      else
        render json: { message: 'New Employee Created', data: employ }, status: :created
      end
    else
      render json: { message: 'Unable to create' }, status: :bad_request
    end
  end

  def update
    @employ.update(employ_params)
    if @employ.errors.present?
      render json: { message: @employ.errors.full_messages }, status: :bad_request
    else
      render json: { message: 'Employee details updated', data: @employ }, status: :ok
    end
  end


  def destroy
    @employ.destroy
    render json: { message: 'Employee Deleted' }, status: :ok
  end

  private

  def set_employ
    @employ = Employe.find_by(id: params[:id])
    if !@employ.present?
      render json: { message: 'Cannot find the employee' }, status: :not_found
    end
  end

  def employ_params
    params.require(:employe).permit(:name, :age, :email, :dept, :location)
  end
end
