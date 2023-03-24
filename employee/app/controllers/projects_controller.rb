class ProjectsController < ApplicationController

  def index
    @project = Project.all
    render json: @project, status: :ok
  end

  def create
    @project = Project.new(project_params)
    binding.pry
    
    if @project.save
      render json: @project, status: :created
    else
      render json: { errors: @project.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  private

  def project_params
    params.permit(:client_id, projects: [:name, :project_type])
  end

end
