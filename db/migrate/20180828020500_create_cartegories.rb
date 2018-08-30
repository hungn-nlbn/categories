class CreateCartegories < ActiveRecord::Migration[5.2]
  def change
    create_table :cartegories do |t|
      t.string :name
      t.integer :parent_id, :default => 0

      t.timestamps
    end
  end
end
