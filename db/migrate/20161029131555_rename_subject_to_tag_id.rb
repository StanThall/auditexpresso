class RenameSubjectToTagId < ActiveRecord::Migration[5.0]
  def change
  	rename_column :blog_posts, :subject, :tag_id
  end
end
