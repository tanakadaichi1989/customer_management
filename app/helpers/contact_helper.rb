module ContactHelper
  def staff_name(staff)
    staff = staff
    Staff.find_by(id: staff.staff_id).name
  end

  def company_name(company)
    company = company
    Customer.find_by(id: company.customer_id).company
  end
end
