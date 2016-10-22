Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :reviews, only: [:show], defaults: { format: 'json' } do
    collection do
      get :search
    end
  end

  resources :businesses, only: [:create], defaults: { format: 'json' }

  root "reviews#new"
end
