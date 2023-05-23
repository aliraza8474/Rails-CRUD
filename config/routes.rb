Rails.application.routes.draw do
  resources :posts
  # get '/',to: 'home#index'


  
  devise_for :users, controller:{
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations'
  }
  authenticated :user do
    root 'home#welcome', :as => :authenticated_root
  end
  unauthenticated :user do
    root 'home#index', :as => :unauthenticated_root
  end
  


end
