class AuthController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @user = User.find_by(username: params[:username])
    if @user.present? && @user.authenticate(params[:password])
      token = JWT.encode({user_id: @user_id},ENV['JWT_SECRET'],'HS256')
      render json: {
        user: {
          id: @user.id,
          username: @user.username,
          shares: @user.shares,
          wallet: @user.wallets.first.amount
        },
        token: token
      }
    else
      render json: {error: "No username or password found"}
    end
  end

end
