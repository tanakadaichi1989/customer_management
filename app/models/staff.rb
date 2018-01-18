class Staff < ApplicationRecord
  has_secure_password

  validates :name,{presence: true}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,{presence: true, uniqueness: true, format:{with:/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i},length:{maximum:255}}

  #validates :password,{presence: true, length:{minimum:8,maximum:128}}

  def contact
    return Contact.where(staff_id: self.id)
  end
end
