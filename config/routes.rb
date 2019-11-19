Rails.application.routes.draw do
  root "doctors#index"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :patients
  resources :doctors do
    resources :appointments, only: [:index, :new, :create, :destroy]
  end
end
