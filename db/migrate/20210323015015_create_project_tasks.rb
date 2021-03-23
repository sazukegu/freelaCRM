class CreateProjectTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :project_tasks do |t|

      t.timestamps
    end
  end
end
