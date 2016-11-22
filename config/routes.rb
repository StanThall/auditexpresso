Rails.application.routes.draw do
  get 'pages/show'

  resources :blog_posts
  resources :strips
  resources :tags

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  put 'cabinets/up/:id' =>'cabinets#up', as: 'up_cabinet'
  put 'cabinets/down/:id' =>'cabinets#down', as: 'down_cabinet'
  post 'strips/collect' => 'strips#collect', as: 'collect_strip'
  post 'blog_posts/comment_collect' => 'blog_posts#comment_collect', as: 'collect_comment'
  get '/confidentialite' => 'pages#show'
  
  root 'blog_posts#index'
end
