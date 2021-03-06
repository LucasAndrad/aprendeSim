class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :login
      t.string :password
      t.string :password_digest
      t.boolean :active
      t.boolean :admin

      t.timestamps
    end
  end
end
