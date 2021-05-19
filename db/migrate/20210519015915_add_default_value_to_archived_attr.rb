class AddDefaultValueToArchivedAttr < ActiveRecord::Migration[6.1]
  def change
    change_column_default :tickets, :archived, false
  end
end
