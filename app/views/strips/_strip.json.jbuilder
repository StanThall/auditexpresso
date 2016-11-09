json.extract! strip, :id, :title, :catch, :content, :created_at, :updated_at
json.url strip_url(strip, format: :json)