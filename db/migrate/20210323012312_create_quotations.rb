class CreateQuotations < ActiveRecord::Migration[6.1]
  def change
    create_table :quotations do |t|

      t.timestamps
    end
  end
end
