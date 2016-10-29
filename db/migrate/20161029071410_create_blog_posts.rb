class CreateBlogPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.string :catchphrase
      t.string :img_path
      t.text :content
      t.string :author
      t.string :subject

      t.timestamps
    end
  end
end
