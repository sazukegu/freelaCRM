class AddUserReferenceToProject < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :freelancer_id, :uuid
    add_column :projects, :client_id, :uuid

    add_index :projects, :freelancer_id
    add_index :projects, :client_id
  end
end
