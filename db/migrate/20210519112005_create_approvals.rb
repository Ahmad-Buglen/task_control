class CreateApprovals < ActiveRecord::Migration[6.1]
  def change
    create_table :approvals do |t|
      t.belongs_to :task
      t.belongs_to :user
      t.timestamps
    end
  end
end
