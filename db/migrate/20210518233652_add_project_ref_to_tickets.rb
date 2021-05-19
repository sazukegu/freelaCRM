class AddProjectRefToTickets < ActiveRecord::Migration[6.1]
  def change
    add_reference :tickets, :project, null: false, foreign_key: true, type: :uuid
  end
end
