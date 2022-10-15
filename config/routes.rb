Rails.application.routes.draw do
  get 'bands', to: 'bands#index'
  get 'bands/:name', to: 'bands#show'
  post 'bands', to: 'bands#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
