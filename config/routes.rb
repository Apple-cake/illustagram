Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "illustrations#index"
  resources :illustrations, except: :show
  # get   'illustrations'      =>  'illustrations#index'
  # get   'illustrations/new'  =>  'illustrations#new'
  # post  'illustrations'      =>  'illustrations#create'
  # delete  'illustrations/:id'  => 'illustrations#destroy'
  # patch   'illustrations/:id'  => 'illustrations#update'
  # get   'illustrations/:id/edit'  => 'illustrations#edit'
  get   'users/:id'   =>  'users#show'
end