class CreateCommentsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :comments, id: :uuid do |t|
      t.text :body
      t.references :commentable, polymorphic: true, type: :uuid
      t.references :user, type: :uuid
      t.integer :parent_id

      t.timestamps
    end
  end
end
