class UserSerializer < ActiveModel::Serializer
  # has_many :wallets
  has_many :user_actions
  has_many :user_stocks

  attributes :id, :username, :wallets, :shares

  def wallets
    object.wallets
  end

end
