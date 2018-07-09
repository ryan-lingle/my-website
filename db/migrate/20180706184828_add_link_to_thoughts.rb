class AddLinkToThoughts < ActiveRecord::Migration[5.2]
  def change
    add_column :thoughts, :medium_link, :string
  end
end
