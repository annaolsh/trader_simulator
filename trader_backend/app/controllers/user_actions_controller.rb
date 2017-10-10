class UserActionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    actions = UserAction.all
    render json: actions
  end

  def create
    action = UserAction.new(action_params)
    action.save
    user = User.find(params[:user_action][:user_id])
    user.shares = params[:stocksUserHas]
    action.user = user
    wallet = user.wallets.first
    wallet.amount = params[:wallet]
    wallet.save
    user.save
    render json: {action: action, user: user, wallet: wallet}
  end

  private
  def action_params
    params.require(:user_action).permit(:user_id, :income, :total, :action, :current_price, :shares)
  end

  # def stocks_user_has
  #   params.require(:user_action).permit(:stocksUserHas)
  # end
  #
  # def update_wallet
  #   params.require(:user_action).permit(:wallet)
  # end

end
