module StaffHelper
  def howmany_contact(way)
    way = way
    @contacts.where(contact_way: way).count
  end
end
