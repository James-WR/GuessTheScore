Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/404', to: 'errors#not_found'
  get '/500', to: 'errors#internal_server'
  get '/422', to: 'errors#unprocessable'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :communities do
    collection do
      post :join
    end
    resources :members, only: [:new, :create, :update]
    resources :member_guesses, only: [:new, :create, :update]
  end
end
