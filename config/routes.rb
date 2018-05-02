Rails.application.routes.draw do
  resources :position_players, except: [:destroy]
  resources :pitchers, except: [:destroy]
  root 'pages#home'
  get 'pages/home', to: 'pages#home'
end
