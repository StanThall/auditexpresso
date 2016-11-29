class RemoveFromFromLogs < ActiveRecord::Migration[5.0]
  def up
  	remove_column :logs, :from
  end

  def down
  	add_column :logs, :from, :string
  end
end
