Rails.application.routes.draw do
  resources :welcome, only: [:home] do
  end
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  # Add your routes here
  root 'welcome#home'
end


# Rails.application.routes.draw do
#   get '/login' => 'sessions#new'
#   post '/login' => 'sessions#create'
#   post '/logout' => 'sessions#destroy'

#   resources :users, only: [:new, :create]

#   root 'welcome#home'
