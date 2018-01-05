class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.integer :staff_id
      t.integer :customer_id
      t.date :contact_day
      t.string :contact_way
      t.text :memo

      t.timestamps
    end
  end
end
