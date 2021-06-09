Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  post 'tasks/change_state', to:  "tasks#change_state"
  post 'tasks/approve', to:  "tasks#approve"
  root to: "tasks#index"
  resources :tasks, only: [:index, :new, :create]
end
