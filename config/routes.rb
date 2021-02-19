# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :categories, only: [:index] do
    resources :suppliers, only: [:index] do
      resources :stocks, only: [:index]
    end
  end

  root controller: :categories, action: :index
end
