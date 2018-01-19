module CustomerHelper
    def contact_staff(contact)
        Staff.find_by(id: contact.staff_id).name
    end
end
