class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :book_name
      t.string :book_image
      t.string :book_author
      t.integer :cartegory_id
      t.decimal :book_price

      t.timestamps
    end
  end
end
