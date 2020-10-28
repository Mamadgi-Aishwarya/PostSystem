Rails.application.routes.draw do
  root "questions#index" 
  resources :users ,except: [:new]
  resources :questions 
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#delete'
end
