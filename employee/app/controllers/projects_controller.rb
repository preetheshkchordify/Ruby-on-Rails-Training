class ProjectsController < ApplicationController
  before_action :authorize_request
  before_action :admin, only: %i[create update destroy]
  before_action :set_project, only: %i[show]

  def index
    @project = Project.all.order(:id)
    render json: @project, status: :ok
  end

  def active
    @project = Project.where(is_active: true)
    render json: @project
  end

  def create
    project_params[:projects].each do |element|
      project = Project.new
      project.client_id = params[:client_id]
      project.name = element[:name]
      project.project_type = element[:project_type]
      if project.save
        # render json: { message: 'OK' }, status: :created
      else
        render json: { errors: @project.errors.full_messages },status: :unprocessable_entity
        exit
      end
    end
  end

  def show
    render json: @project, status: :ok
  end

  def update
    # binding.pry
    @project.update(project_params)
    if @project.errors.present?
      render json: { message: @project.errors.full_messages }, status: :bad_request
    else
      render json: { message: 'project details updated', data: @project }, status: :ok
    end
  end

  def destroy
    @project.is_active = false
    @project.save
    render json: { message: 'Status updated' }
  end

  private

  def set_project
    @project = Project.find_by(id: params[:id])
    render json: { message: 'Cannot find the project' }, status: :not_found unless @project.present?
  end

  def admin
    @project = Project.find_by(id: params[:id])
    @role = @current_user.roles&.first&.name
    if @role == 'user'
      render json: { message: 'You have no access' }
    end
  end

  def project_params
    params.permit(:client_id, :name, :project_type, projects: [:name, :project_type])
  end
end
