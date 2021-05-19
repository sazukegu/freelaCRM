class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets, id: :uuid do |t|

      t.timestamps
    end
  end
end
