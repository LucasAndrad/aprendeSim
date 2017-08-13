class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.string :front_image
      t.text :intro_text
      t.text :body

      t.timestamps
    end
  end
end
