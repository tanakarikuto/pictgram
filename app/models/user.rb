class User < ApplicationRecord
  validates :name, {presence: true, length: {maximum: 15}}
  validates :email, {presence: true}
  validates :password, :password_confirmation, length: {minimum: 8, maximum: 32}
  
   #アルファベット、数字の混合のみ可能
  #validates :password, :password_confirmation, inclusion: {in: [a-z/d]}
  
  #メールアドレスの正規表現　「~ @ ~ . ~」
  #validates :email, format {with: /\A[\w+-.]+@[a-z\d-.]+.[a-z]+\z/i}
  
  has_secure_password
  
  has_many :topics
end
