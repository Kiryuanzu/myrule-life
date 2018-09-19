Rails.application.routes.draw do
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy' 
  root 'problems#index'
  resources :problems do
    resources :rules
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
