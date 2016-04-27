Rails.application.routes.draw do
  get 'tasks/new'

 root 'tasks#index'
 
 get 'tasks'  => 'tasks#index'
 get 'newtask' => 'taskss#new'
 
 
 resources :tasks
end
