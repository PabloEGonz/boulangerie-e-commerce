class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.boolean :paid, default: false
      t.integer :total, precision: 10, scale: 2, null: false
      t.string :details
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
