class AuthenticationController < ApplicationController
  before_action :authorize_request, except: :login
  

  # POST /auth/login
  def login
    # binding.pry
    @permit = User.find_by(email: params[:email])
    if @permit.permission == true
      @user = User.find_by_email(params[:email])
      if @user&.authenticate(params[:password])
        token = JsonWebToken.encode(user_id: @user.id)
        time = Time.now + 24.hours.to_i
        render json: { token: token, exp: time.strftime("%m-%d-%Y %H:%M"),
                       username: @user.username }, status: :ok
      else
        render json: { error: 'unauthorized' }, status: :unauthorized
      end
    else
      render json: { message: 'You are not permited'}
    end
  end

  private

  def login_params
    params.require(:user).permit(:email, :password, :permission)
  end
end
