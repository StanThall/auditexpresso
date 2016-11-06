Rails.application.routes.draw do
  resources :blog_posts
  resources :tags

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  put 'cabinets/up/:id' =>'cabinets#up', as: 'up_cabinet'
  
  root 'blog_posts#index'
end
