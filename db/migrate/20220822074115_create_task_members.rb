class CreateTaskMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :task_members do |t|
      t.references :task, null: false, foreign_key: true
      t.references :event_member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
