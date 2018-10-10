Rails.application.routes.draw do
  resources :projects
  devise_for :users
  resources :dashboard
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "dashboard#index"
end
