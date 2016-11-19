class CreatePubs < ActiveRecord::Migration[5.0]
  def change
    create_table :pubs do |t|
      t.string :advertiser
      t.string :path
      t.string :poster

      t.timestamps
    end
  end
end
