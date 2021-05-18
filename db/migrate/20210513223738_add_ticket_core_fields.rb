class AddTicketCoreFields < ActiveRecord::Migration[6.1]
  def change
    add_column :tickets, :title, :string
    add_column :tickets, :content, :text
  end
end
