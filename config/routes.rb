Rails.application.routes.draw do
  get 'page/about'
  get 'page/contact'
  root 'page#index'
  get 'page', to: 'page#index'
  get 'page', to: 'page#contact'
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
