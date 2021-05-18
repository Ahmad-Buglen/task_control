class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.string :status, default: 'new'
      t.datetime :deadline

      t.timestamps
    end
  end
end
