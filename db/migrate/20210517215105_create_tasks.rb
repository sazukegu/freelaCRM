class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks, id: :uuid do |t|
      t.string :title
      t.text :summary
      t.boolean :user_requested
      t.references :project, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
