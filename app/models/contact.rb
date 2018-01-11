class Contact < ApplicationRecord
  validates :staff_id,{presence:true}
  validates :customer_id,{presence:true}
  validates :contact_way,{presence:true}
  validates :contact_day,{presence:true}
  validates :contacted_staff_id,{presence:true}
  validates :memo,{presence:true}
end
