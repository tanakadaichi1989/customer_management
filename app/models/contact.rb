class Contact < ApplicationRecord
  validates :staff_id,{presence:true}
  validates :customer_id,{presence:true}
  validates :contact_way,{presence:true}
  validates :contact_day,{presence:true}
  validates :contacted_staff_id,{presence:true}
  validates :memo,{presence:true}

  def customer
    customer = Customer.find_by(id: self.customer_id)
    return customer.company
  end

  def staff
    staff = Staff.find_by(id: staff_id)
    return staff
  end

  def self.search(customer)
    if customer
      customer = Customer.where(['company LIKE ?','%#{search}%'])
      Contact.where(['customer_id LIKE ?','#{customer.id}'])
    else
      Contact.all
    end
  end

end
