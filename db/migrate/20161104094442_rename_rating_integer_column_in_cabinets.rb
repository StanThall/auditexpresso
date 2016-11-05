class RenameRatingIntegerColumnInCabinets < ActiveRecord::Migration[5.0]
  def up
  	remove_column :cabinets, :rating_integer
  end
  def down
  	add_column :cabinets, :rating_integer
  end
end
