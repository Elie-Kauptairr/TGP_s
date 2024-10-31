Rails.application.routes.draw do
  # Routes pour la gestion des sessions
  resources :sessions, only: [:new, :create, :destroy]

  # Routes pour les utilisateurs (inscription et affichage)
  resources :users, only: [:new, :create, :show]

  # Routes pour les autres fonctionnalités
  resources :cities, only: [:show]
  resources :the_gossip_projects do
    resources :comments, only: [:create, :destroy]
  end

  # Page d'accueil
  root "the_gossip_projects#index"
end
