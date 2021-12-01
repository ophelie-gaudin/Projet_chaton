class AddAdminBooleanToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :admin_boolean, :boolean, :default => false
  end
end
