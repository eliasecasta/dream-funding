Rails.application.routes.draw do
  devise_for :users

  resources :donations, path: "dreams/donations"

  resources :dreams do
    resources :donations
  end

  root to: 'dreams#index'
end
