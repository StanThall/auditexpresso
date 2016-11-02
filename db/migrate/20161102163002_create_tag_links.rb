class CreateTagLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :tag_links do |t|
      t.integer :blog_post_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
