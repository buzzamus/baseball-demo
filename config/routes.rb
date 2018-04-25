Rails.application.routes.draw do
  resources :position_players
  root 'pages#home'
  get 'pages/home', to: 'pages#home'
end
