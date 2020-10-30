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
  get 'onde-investir-puts', to: 'pages#onde_investir_puts', as: 'pages_onde_investir_puts'


  get 'deriva_moves/new_put/:carteira_id/:ativo_id', to: 'deriva_moves#new_put', as: 'new_put'

  get 'investimentos/new_garantia/:carteira_id/', to: 'investimentos#new_garantia', as: 'new_garantia'


end
