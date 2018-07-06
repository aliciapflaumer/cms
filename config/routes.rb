Rails.application.routes.draw do
  get 'sessions/new'

  get 'home', to:'welcome#index', as: 'home'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :articles do
    resources :comments
  end

  resources :users
  resources :sessions

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
