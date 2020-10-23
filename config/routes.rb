Rails.application.routes.draw do
  devise_for :users
  resources :dreams
  resources :donations

  root to: 'dreams#index'
end
