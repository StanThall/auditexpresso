class CreateLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :logs do |t|
      t.string :session_id
      t.integer :action_id
      t.string :page
      t.string :from

      t.timestamps
    end
  end
end
