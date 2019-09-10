Rails.application.routes.draw do
  get 'todos', to: 'todos#index'
  get 'todos/new'
  post 'todos', to:'todos#create'
  get 'todos/:id', to: 'todos#show', as: 'todo'
  get 'todos/:id/edit', to: 'todos#edit', as:'edit_todo'
  patch 'todos/:id', to: 'todos#update'
  delete 'todos/:id', to: 'todos#destroy', as: 'delete_todo'
  get 'todos/:id/completed', to: 'todos#completed', as: 'completed_todo'
  get 'todos/list', to: 'todos#list', as: 'list_todo'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
