class Customer < ApplicationRecord
  validates :name,{presence:true}

  validates :company,{presence:true}

  validates :email,{presence:true,uniqueness:true,format:/\A[\w+\-]+@[\a-z\d-]+/}

  validates :telephone,{presence:true,uniqueness:true,format:/\d{2,5}-\d{1,4}-\d{4}/}
  validates :address,{presence:true}
end
