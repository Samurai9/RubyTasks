# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'home#show'

  resources :cards do
    resources :todos, only: [:create]
  end

  resources :todos, only: [:destroy]
  # resources :todos, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
