Rails.application.routes.draw do
  devise_for :users
  root to: 'dreams#index'

  resources :donations, path: "dreams/donations"
  resources :dreams, except: %i[delete edit] do
    resources :donations, except: %i[delete edit index]
  end

end
