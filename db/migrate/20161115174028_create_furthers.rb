class CreateFurthers < ActiveRecord::Migration[5.0]
  def change
    create_table :furthers do |t|
      t.string :label
      t.string :link

      t.timestamps
    end
  end
end
