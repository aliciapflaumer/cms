class RemoveUsernameFromArticles < ActiveRecord::Migration[5.1]
  def change
    remove_column :articles, :username, :string
  end
end
