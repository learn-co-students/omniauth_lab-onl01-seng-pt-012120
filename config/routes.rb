Rails.application.routes.draw do
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]

  #resources :welcome, via: [:home]

  root 'welcome#home'
end
