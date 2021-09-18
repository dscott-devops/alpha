Rails.application.routes.draw do
  get 'chatroom', to: 'chatroom#index'
  get 'chat', to: 'chatroom#chat'
  get 'chat1', to: 'chatroom#chat1'
  get 'chat2', to: 'chatroom#chat2'
  get 'page/about'
  get 'page/contact'
  root 'page#index'
  get 'page', to: 'page#index'
  get 'page', to: 'page#contact'
  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'
  resources :users
  resources :articles
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :categories, except: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
