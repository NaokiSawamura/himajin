Rails.application.routes.draw do
  devise_for :users
  root to: 'tweets#index'
  resources :users, only: [:create, :new, :edit, :show, :update, :destroy] do
    collection do
      get 'sign_up_select'
    end
  end
  resources :tweets, only: [:create, :new, :edit, :show, :update, :destroy] do
    member do
      get 'commnet'
    end
  end
  resources :comments, only: [:create, :new, :edit, :show, :update, :destroy] do
  end
end
