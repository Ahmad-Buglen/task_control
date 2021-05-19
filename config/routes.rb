Rails.application.routes.draw do
  devise_for :users
  get 'tasks/change_state', to:  "tasks#change_state"
  get 'tasks/approve', to:  "tasks#approove"
  # root "/tasks", to: "tasks#index"
  root to: "tasks#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
