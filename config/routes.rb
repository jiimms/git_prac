Rails.application.routes.draw do
  get 'games/new'

  get 'games/index'

  get 'books/index'

  get 'books/title'

  get 'books/author'

  resources :users

  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
