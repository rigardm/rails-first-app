Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'hotels#show'

  resources :hotels do
    resources :rooms, only: [:index]
  end
end
