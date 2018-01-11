class AddContactedStaffIdToContact < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :contacted_staff_id, :integer
  end
end
