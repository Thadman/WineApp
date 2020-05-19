Rails.application.routes.draw do
  devise_for :users

  resources :listings
  
  resources :dashboard, only: [:index, :destroy]

  root to: 'welcome#index'

  get '/search' => 'pages#search', as: 'search_page'

end