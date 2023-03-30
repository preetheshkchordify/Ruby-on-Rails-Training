class RolesController < ApplicationController
  before_action :authorize_request
  before_action :set_userproject, only: %i[show]
  before_action :admin, only: %i[create]

  def index
    @role = Role.all
    render json: @role, status: :ok
  end

  def create
    @role = Role.new(role_params)
    if @role.save
      render json: @role, status: :created
    else
      render json: { errors: @role.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  private

  def admin
    @role = @current_user.roles&.first&.name
    if @role == 'user'
      render json: { message: 'You have no access'}
    end
  end
  def role_params
    params.permit(:name, :code)
  end

end
