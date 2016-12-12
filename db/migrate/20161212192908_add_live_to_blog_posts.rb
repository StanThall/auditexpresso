class AddLiveToBlogPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :blog_posts, :live, :boolean
  end
end
