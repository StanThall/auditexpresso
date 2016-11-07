class AddRkChangeToCabinets < ActiveRecord::Migration[5.0]
  def change
  	add_column :cabinets, :rank_change, :integer
  end
end
