Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users, only: %i[show]

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :campaigns, shallow: true do
    resources :donations, only: %i[new create]
  end

  resources :donations, only: %i[update destroy]
end
