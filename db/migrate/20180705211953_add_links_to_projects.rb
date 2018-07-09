class AddLinksToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :github_link, :string
    add_column :projects, :website_link, :string
  end
end
