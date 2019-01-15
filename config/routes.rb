Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index', as: 'home'
  get 'rooms' => 'rooms#show', as: 'rooms'
  get 'about' => 'pages#about', as: 'about'

  resources :posts

  mount ActionCable.server => '/cable'
end
