Rails.application.routes.draw do
  resources :position_players
  resources :pitchers
  root 'pages#home'
  get 'pages/home', to: 'pages#home'
end
