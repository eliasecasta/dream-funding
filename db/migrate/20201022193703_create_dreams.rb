class CreateDreams < ActiveRecord::Migration[6.0]
  def change
    create_table :dreams do |t|
      t.string :name
      t.integer :money_objective
      t.string :icon_string
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
