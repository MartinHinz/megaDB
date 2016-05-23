Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :catalogues
    resources :catalogue_entries
    resources :external_collections
    resources :external_collection_entries
    resources :mega_types
    resources :sites
    resources :sources
    root to: "users#index"
  end

  resources :external_collection_entries
  resources :external_collections
  resources :catalogue_entries
  resources :sites
  resources :catalogues
  resources :sources
  resources :mega_types
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
