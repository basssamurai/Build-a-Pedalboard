Rails.application.routes.draw do

  root to: 'pedalboards#index'
  resources :pedalboards
  resources :pedals

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
