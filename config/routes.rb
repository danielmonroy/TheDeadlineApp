Rails.application.routes.draw do
  resources :project_updates
  resources :tasks
  resources :projects, param: :slug
  devise_for :users, path: 'auth'
  resources :dashboard
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "dashboard#index"
end
