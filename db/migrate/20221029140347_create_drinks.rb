class CreateDrinks < ActiveRecord::Migration[7.0]
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :description
      t.integer :stock_level
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
