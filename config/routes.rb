Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories
  root 'categories#index'
  get 'user_signup', to: 'users#new'
  resources :users, except: [:new]
end
