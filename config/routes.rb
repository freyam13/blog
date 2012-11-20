Blog::Application.routes.draw do
  
  root :to => 'posts#index'
  
  get '/login' => 'sessions#new', :as => 'sign_in'
  get '/logout' => 'sessions#destroy'
  
  post 'sessions/create' => 'sessions#create'
  
  get '/about' => 'static#about'
  get '/projects' => 'static#projects'
  
  resources :posts
  resources :users

end
