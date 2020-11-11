Rails.application.routes.draw do
  get 'home', to: 'restaurants#home'
  resources :restaurants do
    resources :reviews, only: [:create]
  end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
