Rails.application.routes.draw do
  resources :sinteticos
  resources :proventos
  resources :anos
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
  root to: 'carteiras#index'
  
  get 'seed', to: 'pages#seed', as: 'pages_seed'
  get 'for_google', to: 'pages#for_google', as: 'pages_for_google'
  get 'onde-investir-puts', to: 'pages#onde_investir_puts', as: 'pages_onde_investir_puts'


  get 'deriva_moves/new_put/:carteira_id/:ativo_id', to: 'deriva_moves#new_put', as: 'new_put'
  get 'deriva_moves/new_put_from_investimentos/:carteira_id/:ativo_id/:corretora_id/:investimento_id', to: 'deriva_moves#new_put_from_investimentos', as: 'new_put_from_investimentos'
  get 'deriva_moves/:id/edit_put', to: 'deriva_moves#edit_put', as: 'edit_put'
  
    get 'deriva_moves/new_call/:carteira_id/:ativo_id', to: 'deriva_moves#new_call', as: 'new_call'
  get 'deriva_moves/new_call_from_investimentos/:carteira_id/:ativo_id/:corretora_id/:investimento_id', to: 'deriva_moves#new_call_from_investimentos', as: 'new_call_from_investimentos'
  get 'deriva_moves/:id/edit_call', to: 'deriva_moves#edit_call', as: 'edit_call'

  get 'investimentos/new_garantia/:carteira_id/', to: 'investimentos#new_garantia', as: 'new_garantia'

  get 'carteiras/:id/radar_puts', to: 'carteiras#radar_puts', as: 'radar_puts'
  get 'carteiras/:id/radar_calls', to: 'carteiras#radar_calls', as: 'radar_calls'
  get 'carteiras/:id/alocacao_puts', to: 'carteiras#alocacao_puts', as: 'alocacao_puts'
  get 'carteiras/:id/alocacao_calls', to: 'carteiras#alocacao_calls', as: 'alocacao_calls'
  get 'carteiras/:id/dividendo_sintetico', to: 'carteiras#dividendo_sintetico', as: 'dividendo_sintetico'
  get 'carteiras/:id/meus_proventos', to: 'carteiras#meus_proventos', as: 'meus_proventos'
end
