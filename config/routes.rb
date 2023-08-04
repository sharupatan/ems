Rails.application.routes.draw do
  devise_for :users
  root "employees#index"

  resources :employees
  resources :positions
  resources :leaves
  resources :projects

  namespace :admin do
    resources :employees
    get 'dashboard' => 'dashboard#index'
  end
end
