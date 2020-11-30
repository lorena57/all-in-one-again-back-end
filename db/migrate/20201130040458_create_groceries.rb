class CreateGroceries < ActiveRecord::Migration[6.0]
  def change
    create_table :groceries do |t|
      t.string :item
      t.integer :qty
      t.string :comments

      t.timestamps
    end
  end
end
