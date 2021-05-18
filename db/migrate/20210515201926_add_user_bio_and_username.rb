class AddUserBioAndUsername < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string
    add_column :users, :github_username, :string
    add_column :users, :linkedin_username, :string
    add_column :users, :summary, :text
  end
end
