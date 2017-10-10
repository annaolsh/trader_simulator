class CompanyPriceSerializer < ActiveModel::Serializer
  # attributes :id, :calories, :date, :food_name, :food_id, :user_name, :user_id
  has_one :company
end
