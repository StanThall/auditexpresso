class AddForeignKeysToTags < ActiveRecord::Migration[5.0]
  def change
  	add_index :tag_links, :tag_id
  	add_index :tag_links, :blog_post_id
  end
end
