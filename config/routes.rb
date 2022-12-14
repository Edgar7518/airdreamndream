Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :dreams, except: [:edit, :update, :destroy] do
    resources :locations, only: [:new, :create]
  end
  resources :locations, only: [:index, :update]
end
