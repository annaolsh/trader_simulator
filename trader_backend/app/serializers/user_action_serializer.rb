class UserActionSerializer < ActiveModel::Serializer
  # attributes :id, :calories, :date, :food_name, :food_id, :user_name, :user_id
  has_one :user
  attributes :id, :created_at, :action, :shares, :current_price, :income
end
