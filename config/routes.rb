Rails.application.routes.draw do
  devise_for :users, components: {registrations: 'registrations', sessions: 'sessions'}

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy' 
  end
  # resources :users
  root "articles#index"
  resources :articles
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
