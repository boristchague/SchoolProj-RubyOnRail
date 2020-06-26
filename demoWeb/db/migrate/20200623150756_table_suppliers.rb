class TableSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :supplier
    add_column :supplier, :first_name, :string 
    add_column :supplier, :last_name, :string
    add_column :supplier, :email, :string
    add_column :supplier, :adresse, :string
  end
end
