Rails.application.routes.draw do
  get 'tasks/new'

 root 'tasks#index'
 
 get 'tasks'  => 'tasks#index'
 get 'newtask' => 'tasks#new'
 
 
 resources :tasks
end
