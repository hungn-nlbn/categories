class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.string :hashed_password
      t.string :salt
      t.string :role

      t.timestamps
    end
  end
end
