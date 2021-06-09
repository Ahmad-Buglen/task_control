Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  
  root to: "tasks#index"
  resources :tasks, only: [:index, :new, :create] do
    collection do
      post 'change_state'
      post 'approve'
    end
  end
end
