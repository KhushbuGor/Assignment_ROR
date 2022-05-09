Rails.application.routes.draw do
  resources :industries_sectors
  resources :sectors
  resources :industries
  root 'industries#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
