class Company < ApplicationRecord
  has_many :user_stocks
  has_many :company_prices
end
