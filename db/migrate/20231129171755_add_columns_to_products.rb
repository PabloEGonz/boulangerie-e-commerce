class AddColumnsToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :description, :text
    add_column :products, :image, :string
    add_column :products, :stock, :integer
  end
end
