class AddArchivedToTickets < ActiveRecord::Migration[6.1]
  def change
    add_column :tickets, :archived, :boolean
  end
end
