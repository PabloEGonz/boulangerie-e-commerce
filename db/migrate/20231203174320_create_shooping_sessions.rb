class CreateShoopingSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :shoping_sessions do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :total

      t.timestamps
    end
  end
end
