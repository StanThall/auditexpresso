class AddSlugToStrips < ActiveRecord::Migration[5.0]
  def change
    add_column :strips, :slug, :string
  end
end
