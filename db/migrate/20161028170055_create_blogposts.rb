class CreateBlogposts < ActiveRecord::Migration[5.0]
  def change
    create_table :blogposts do |t|
      t.string :title
      t.string :catchline
      t.string :img_path
      t.text :content
      t.string :author

      t.timestamps
    end
  end
end
