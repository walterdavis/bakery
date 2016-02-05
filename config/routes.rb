Rails.application.routes.draw do
  resources :things
  root to: 'things#index'
end
