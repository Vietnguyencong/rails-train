Rails.application.routes.draw do
  root  'reports#index'
  resources :reports do
    resources :links
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
