Rails.application.routes.draw do

  #Read all
  get 'tasks', to:'tasks#index'

  #Create a new task
  get 'tasks/new', to:'tasks#new', as:'new_task'
  post 'tasks', to:'tasks#create'


  #Read one
  get 'tasks/:id', to:'tasks#show', as:'task'

  #Edit
  get 'task/:id/edit', to: 'tasks#edit', as:'edit_task'
  patch 'task/:id', to: 'tasks#update'
end
