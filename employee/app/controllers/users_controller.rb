class UsersController < ApplicationController

  before_action :authorize_request, except: :create
  before_action :find_user, only: %i[update destroy show]

  # GET /users
  def index
    @users = User.all
    render json: @users, status: :ok
  end

  # GET /users/{username}
  def show
    render json: @user, status: :ok
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: { errors: @user.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  # PUT /users/{username}
  def update
    # binding.pry
    @user.update(project_params)
    if @user.errors.present?
      render json: { message: @user.errors.full_messages }, status: :bad_request
    else
      render json: { message: 'user details updated', data: @user }, status: :ok
    end
  end

  # DELETE /users/{username}
  def destroy
    @user.destroy
    render json: { message: 'Status updated' }
  end

  private

  def find_user    
    @user = User.find_by(id: params[:_username])
    render json: { message: 'Cannot find the user' }, status: :not_found unless @user.present?
  end

  def user_params
    params.permit(:name, :username, :email, :password, :password_confirmation, :experience, :location, :designation_id, :department)
  end
end
