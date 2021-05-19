class AddColumnToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :completed_at, :datetime
    add_column :tasks, :canceled_at, :datetime
  end
end
