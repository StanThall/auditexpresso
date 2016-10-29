json.extract! blog_post, :id, :title, :catchphrase, :img_path, :content, :author, :subject, :created_at, :updated_at
json.url blog_post_url(blog_post, format: :json)