class UserRolesController < ApplicationController
  before_action :authorize_request
  before_action :admin, only: %i[create destroy]
  before_action :set_userrole, only: %i[show]

  def index
    @userroles = UserRole.all
    render json: @userroles, status: :ok
  end

  def create
    @userrole = UserRole.new(userrole_params)
    if @userrole.save
      render json: @userrole, status: :created
    else
      render json: { errors: @userrole.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def show
    render json: @userrole, status: :ok
  end

  def destroy
    @userrole.destroy
  end

  private

  def set_userrole
    @userrole = UserRole.find_by(id: params[:id])
    if !@userrole.present?
      render json: { message: 'Cannot find the client' }, status: :not_found
    end
  end

  def admin
    @user = @current_user.roles.first.name
    if @user == 'user'
      render json: { message: 'You have no access'}
    end
  end

   def userrole_params
    params.require(:user_role).permit(:user_id, :role_id)
  end

end
