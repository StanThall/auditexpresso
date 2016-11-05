class AddRatingToCabinets < ActiveRecord::Migration[5.0]
  def change
  	add_column :cabinets, :rating, :integer
  end
end
