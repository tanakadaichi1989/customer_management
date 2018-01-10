class ChangeDatatypeTelephoneOfCustomer < ActiveRecord::Migration[5.1]
  def change
    change_column :customers, :telephone, :string
  end
end
