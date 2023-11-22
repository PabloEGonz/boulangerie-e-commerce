class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.boolean :paid
      t.integer :total
      t.string :details

      t.timestamps
    end
  end
end
