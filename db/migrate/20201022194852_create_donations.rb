class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.integer :amount
      t.references :dream, null: false, foreign_key: true

      t.timestamps
    end
  end
end
