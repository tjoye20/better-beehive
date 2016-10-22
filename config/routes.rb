Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :reviews, only: [:show] do
    collection do
      post :search
    end
  end 

  resources :businesses, only: [:create]

  root "reviews#new"
end
