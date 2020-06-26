class TableItems < ActiveRecord::Migration[5.2]
  def change
    create_table :item
    add_column :item, :name, :string
    add_column :item, :category, :string
    add_column :item, :quantity, :integer
    
  end
end
