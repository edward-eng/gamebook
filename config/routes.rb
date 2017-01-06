Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'games#index'

  resources :users, :sessions

  get 'games/:id' => 'games#show'

end
