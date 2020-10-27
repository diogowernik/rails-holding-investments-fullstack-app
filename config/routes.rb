Rails.application.routes.draw do
  resources :deriva_tipos
  resources :ativo_moves
  resources :vencimentos
  resources :corretoras
  resources :deriva_moves
  resources :derivativos
  resources :estados
  resources :investimentos
  resources :atividades
  resources :ativos
  resources :tipos
  resources :carteiras
  devise_for :users
  root to: 'pages#home'
  get 'seed', to: 'pages#seed', as: 'pages_seed'
  get 'for_google', to: 'pages#for_google', as: 'pages_for_google'

  get 'deriva_moves/new_diogo/:carteira_id/:corretora_id', to: 'deriva_moves#new_diogo', as: 'new_diogo_move'


end
