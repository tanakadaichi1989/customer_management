class Staff < ApplicationRecord
  validates :name,{presence: true}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,{presence: true, uniqueness: true, format:{with:/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i},length:{maximum:255}}

  validates :password,{presence: true, length:{minimum:8,maximum:128}}
end
