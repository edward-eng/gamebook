Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'games#index'
  resources :users, :sessions
  # get 'games/:id' => 'games#show', as: :games
  post '/saved_games' => 'saved_games#create', as: :saved_games
  get 'games' => 'games#index', as: :games
  get 'games/:id' => 'games#show', as: :game
  post '/friendships' => 'friendships#create'
end
