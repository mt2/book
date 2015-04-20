class CreateGamebooks < ActiveRecord::Migration
  def change
    create_table :gamebooks do |t|
      t.string :isbn
      t.string :title
      t.integer :price

      t.timestamps null: false
    end
  end
end
