class Customer < ApplicationRecord
  validates :name,{presence:true}

  validates :email,{presence:true,format:/\A[\w+\-]+@[\a-z\d-]+/}

  validates :telephone,{presence:true,format:/\d{2,5}-\d{1,4}-\d{4}/}
  validates :address,{presence:true}
end
