class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :description
      t.text :content
      t.integer :rating
      t.string :cover
      t.string :note_pic
      t.string :amazon_link
      t.timestamps
    end
  end
end
