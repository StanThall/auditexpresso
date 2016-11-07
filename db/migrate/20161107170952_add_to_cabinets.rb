class AddToCabinets < ActiveRecord::Migration[5.0]
  def change
  	add_column :cabinets, :rank_last, :integer
  	add_column :cabinets, :rank_change_time, :datetime
  end
end
