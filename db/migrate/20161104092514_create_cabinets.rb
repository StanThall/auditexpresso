class CreateCabinets < ActiveRecord::Migration[5.0]
  def change
    create_table :cabinets do |t|
      t.string :s_name
      t.string :l_name
      t.string :rating_integer

      t.timestamps
    end
  end
end
