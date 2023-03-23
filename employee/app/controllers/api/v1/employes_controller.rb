class Api::V1::EmployesController < ApplicationController
  before_action :set_employ, only: [ :show, :update, :destroy ]

  def index
    render json: {message: "EmployeeList", data: Employe.all.order(:id)}, status: :ok
  end

  def show
    # employ = Employe.find_by(id: params[:id])
    if @employ
      render json: {message: "EmployeeDetails",data: @employ}, status: :ok
    else
      render json: {message: "Unable to find the employee"}, status: :bad_request
    end
  end

  def create
    employ = Employe.new(employ_params)
    if employ
      employ.save
    render json: {message: "New Employee Created", data: employ}, status: :created
    else
      render json: {message: "Unable to create"}, status: :bad_request
    end
  end

  def update
    # employ = Employe.find_by(id: params[:id])
    if @employ
      @employ.update(employ_params)
      render json: {message: "Employee details updated", data: @employ}, status: :ok
    else
      render json: {message: "Employee Details cannot be updated"}, status: :bad_request
    end
  end


  def destroy
    # employ = Employe.find_by(id: params[:id])
    if @employ
      @employ.destroy
      render json: {message: "Employee Deleted"}, status: :ok
    else
      render json: {message: "Cannot find the employee"}, status: :not_found
    end
  end


  private

  def set_employ
    @employ = Employe.find_by(id: params[:id])
  end


  def employ_params
    params.require(:employe).permit(:name, :age, :email, :dept, :location)
  end

end
