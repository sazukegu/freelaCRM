class AddProjectRefToTickets < ActiveRecord::Migration[6.1]
  def change
    add_reference :tickets, :project, null: false, foreign_key: true
  end
end
