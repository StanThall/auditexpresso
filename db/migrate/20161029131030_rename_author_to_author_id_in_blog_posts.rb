class RenameAuthorToAuthorIdInBlogPosts < ActiveRecord::Migration[5.0]
  def change
  	rename_column :blog_posts, :author, :author_id
  end
end
