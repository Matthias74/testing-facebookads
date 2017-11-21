Rails.application.routes.draw do

  resources :prospects, only: [:new, :create]


  devise_for :users
  root to: 'pages#home'


  get 'thanks', to: 'pages#thanks', as: 'thanks'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
