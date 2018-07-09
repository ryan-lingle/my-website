class AddStuffToThoughts < ActiveRecord::Migration[5.2]
  def change
    change_column :thoughts, :description, :text
    change_column :projects, :description, :text
  end
end
