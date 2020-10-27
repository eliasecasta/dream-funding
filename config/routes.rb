Rails.application.routes.draw do
  devise_for :users
  root to: 'dreams#index'

  resources :donations, path: "dreams/donations"
  resources :dreams do
    resources :donations
  end

end
