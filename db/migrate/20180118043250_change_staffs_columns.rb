class ChangeStaffsColumns < ActiveRecord::Migration[5.1]
  def change
    add_column :staffs, :password_digest, :string
    remove_column :staffs, :password, :string
  end
end
