class UserProjectsController < ApplicationController

  before_action :authorize_request
  before_action :set_userproject, only: %i[show]
  before_action :admin, only: %i[create update destroy]

  def index
    @userproject = UserProject.all
    render json: @userproject, status: :ok
  end

  def create
    @userproject = UserProject.new(user_project_params)
    if @userproject.save
      render json: @userproject, status: :created
    else
      render json: { errors: @userproject.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def show
    render json: @userproject, status: :ok
  end

  def update
    # binding.pry
    @userproject.update(user_project_params)
    if @userproject.errors.present?
      render json: { message: @userproject.errors.full_messages }, status: :bad_request
    else
      render json: { message: 'project details updated', data: @userproject }, status: :ok
    end
  end

  def destroy
    # binding.pry
    @userproject.delete
    render json: { message: 'Status updated'}
  end

  private

  def set_userproject
    @userproject = UserProject.find_by(id: params[:id])
    if !@userproject.present?
      render json: { message: 'Cannot find the project' }, status: :not_found
    end
  end

  def admin
    @userproject = UserProject.find_by(id: params[:id])
    @role = @current_user.roles&.first&.name
    if @role == 'user'
      render json: { message: 'You have no access'}
    end
  end


  def user_project_params
    params.require(:user_project).permit(:user_id, :project_id)
  end
end
