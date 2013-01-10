Blog::Application.routes.draw do
  
  root :to => 'posts#index'
  
  get '/login' => 'sessions#new', :as => 'sign_in'
  get '/logout' => 'sessions#destroy'
  
  post 'sessions/create' => 'sessions#create'
  
  get '/about' => 'static#about'
  get '/projects' => 'static#projects'
  get '/orbitmedia' => 'static#orbitmedia'
  
  resources :posts
  resources :users

end
