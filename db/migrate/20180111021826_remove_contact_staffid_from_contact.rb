class RemoveContactStaffidFromContact < ActiveRecord::Migration[5.1]
  def change
    remove_column :contacts, :contact_staffid, :integer
  end
end
