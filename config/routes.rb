Rails.application.routes.draw do

  get 'card/new'
  get 'card/show'
  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations' }
 
  root 'items#index'


  resources :items do
    member do
      post 'pay'
      get 'purchase'
      get 'detail'
      get 'transcation'
      patch 'stop_selling'
      patch 'restart_selling'
      patch 'completion'
    end

    collection do
      get 'sell'
      get  'done'
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
      get 'get_delivery_method', defaults: { format: 'json' }
    end
  end


  resources :users, only: [:show, :update] do
    collection do
      get "logout"
      get "card"
      get "identification"
    end
    member do
      get 'profile'
      get 'selling'
      get 'progression'
      get 'completion'
      get 'purchase'
      get 'purchased'
    end
  end

  resources :signup do
    collection do
      get 'sign_up'
      get 'step1'
      get 'step2'
      get 'step3'
      get 'step4'
      get 'finish'
    end
  end

  resources :card, only: [:new, :show] do
    collection do
      post 'show', to: 'card#show'
      post 'pay', to: 'card#pay'
      post 'delete', to: 'card#delete'
    end
  end

  resources :logouts, only: [:index]

end
