class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.references :drink, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :total_value

      t.timestamps
    end
  end
end
