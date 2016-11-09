class CreateStrips < ActiveRecord::Migration[5.0]
  def change
    create_table :strips do |t|
      t.string :title
      t.string :catch
      t.text :content

      t.timestamps
    end
  end
end
