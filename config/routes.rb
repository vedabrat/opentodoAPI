Rails.application.routes.draw do
  resources :lists
  namespace :api, defaults: { format: :json } do
  resources :users
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
