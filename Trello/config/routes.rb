Rails.application.routes.draw do
  resources :cards do
  	resources :todos, only: [:create]
  end

  resources :todos, only: [:destroy]
  # resources :todos, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
