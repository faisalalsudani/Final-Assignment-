Rails.application.routes.draw do
  root to: 'batches#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    resources :batches do
      resources :students do
        resources :evaluations
      end
    end
  end

  resources :batches do
    resources :students
  end

  resources :students do
    resources :evaluations
  end


end
