class AddBlogPostIdToReferences < ActiveRecord::Migration[5.0]
  def change
  	add_column :references, :blog_post_id, :integer
  	add_column :furthers, :blog_post_id, :integer
  end
end
