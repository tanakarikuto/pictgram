class User < ApplicationRecord
  validates :name, {presence: true, length: {maximum: 15}}
  
  
  validates :email, {presence: true}
  #「~@~.~」のバリデーション
  validates :email, format: { with:  URI::MailTo::EMAIL_REGEXP}
  
  
  validates :password, :password_confirmation, length: {minimum: 8, maximum: 32}
  #英数混合
  validates :password, format: {with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i }
   
  has_secure_password
  
  has_many :topics
end
