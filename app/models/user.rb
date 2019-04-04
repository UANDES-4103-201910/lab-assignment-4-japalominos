class User < ApplicationRecord
  has_many :orders
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "only allows valid emails" }
  validates :phone_number, lenght: {in: 9..12}
  validates :password, format: { with:/^[A-Za-z0-9]+$/ }
  validates :password, lenght: {in: 8..12}
end
