Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# Read all tasks
get '/tasks', to: 'tasks#index' # displays all tasks
# Create a new task
get '/tasks/new', to: 'tasks#new' # displays an empty form
post '/tasks', to: 'tasks#create' # creates a new instance
#Read one task
get '/tasks/:id', to: 'tasks#show', as: 'task'
# Update a task
get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task' # displays a prefilled form
patch '/tasks/:id', to: 'tasks#update' # patch a new undated instance to server
# Delete a task
delete '/tasks/:id', to: 'tasks#destroy', as: 'destroy_task' # deletes the task
end
