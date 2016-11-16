class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.integer :blog_post_id
      t.string :title
      t.string :singer
      t.string :link

      t.timestamps
    end
  end
end
