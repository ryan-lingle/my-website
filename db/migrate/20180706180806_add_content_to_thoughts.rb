class AddContentToThoughts < ActiveRecord::Migration[5.2]
  def change
    add_column :thoughts, :content, :text
    add_column :thoughts, :description, :text
  end
end
