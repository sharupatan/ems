Rails.application.routes.draw do
  root "employees#index"

  # resources :employees
  resources :positions
  resources :leaves
  resources :projects

  namespace :admin do
    resources :employees
    get 'dashboard' => 'dashboard#index'
  end
end
