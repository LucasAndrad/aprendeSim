class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :photo
      t.string :email
      t.text :description

      t.timestamps
    end
  end
end
