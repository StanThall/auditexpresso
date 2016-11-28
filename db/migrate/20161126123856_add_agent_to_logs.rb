class AddAgentToLogs < ActiveRecord::Migration[5.0]
  def change
    add_column :logs, :agent, :string
  end
end
