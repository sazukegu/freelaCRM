class AddAnnouncementsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :announcements do |t|
      t.string :title, null: false, default: ""
      t.text :body, null: false, default: ""
      t.timestamps
    end

    add_reference :announcements, :project
  end
end
