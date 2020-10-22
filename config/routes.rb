Rails.application.routes.draw do
  devise_for :users
  resources :dreams
  root to: 'dreams#new'
end
