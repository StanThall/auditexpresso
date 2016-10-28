json.extract! blogpost, :id, :title, :catchline, :img_path, :content, :author, :created_at, :updated_at
json.url blogpost_url(blogpost, format: :json)