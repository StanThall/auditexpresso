Rails.application.routes.draw do
  resources :blog_posts
  resources :tags
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'blog_posts#index'
end
