Rails.application.routes.draw do
  resources :listings
  
  root to: 'welcome#index'
end
