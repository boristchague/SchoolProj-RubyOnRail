class TableCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customer
    add_column :customer, :first_name, :string 
    add_column :customer, :last_name, :string
    add_column :customer, :email, :string
    add_column :customer, :adresse, :string
  end
end
