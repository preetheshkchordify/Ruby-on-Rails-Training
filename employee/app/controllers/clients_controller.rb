class ClientsController < ApplicationController
  before_action :authorize_request
  before_action :admin, only: %i[create update destroy]
  before_action :set_client, only: %i[show]

  def index
    @clients = Client.all
    render json: @clients, status: :ok
  end

  def active
    @client = Client.where(is_active: true)
    render json: { data: @client }
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      render json: @client, status: :created
    else
      render json: { errors: @client.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def show
    render json: @client, status: :ok
  end

  def update
    @client.update(client_params)
    if @client.errors.present?
      render json: { message: @client.errors.full_messages }, status: :bad_request
    else
      render json: { message: 'client details updated', data: @client }, status: :ok
    end
  end

  def destroy
    @client.is_active = false
    @client.save
  end

  private

  def set_client
    @client = Client.find_by(id: params[:id])
    render json: { message: 'Cannot find the client' }, status: :not_found unless @client.present?
  end

  def admin
    @client = Client.find_by(id: params[:id])
    @role = @current_user.roles&.first&.name
    if @role == 'user'
      render json: { message: 'You have no access' }
    end
  end

  def client_params
    params.require(:client).permit(:name, :email, :location)
  end
end
