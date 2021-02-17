# Rails.application.routes.draw do
#   resources :tasks, only: [:index, :new, :create, :show, :edit, :update, :destory]
# end

# ➜  tasks git:(master) ✗ rails routes
#    Prefix Verb  URI Pattern               Controller#Action
#     tasks GET   /tasks(.:format)          tasks#index
#           POST  /tasks(.:format)          tasks#create
#  new_task GET   /tasks/new(.:format)      tasks#new
# edit_task GET   /tasks/:id/edit(.:format) tasks#edit
#      task GET   /tasks/:id(.:format)      tasks#show
#           PATCH /tasks/:id(.:format)      tasks#update
#           PUT   /tasks/:id(.:format)      tasks#update

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "tasks", to: "tasks#index"
end

Rails.application.routes.draw do
  get "tasks/new", to: "tasks#new"
end

Rails.application.routes.draw do
  post "tasks", to: "tasks#create"
end

Rails.application.routes.draw do
  get "tasks/:id", to: "tasks#show", as: :task
end

Rails.application.routes.draw do
  get "tasks/:id/edit", to: "tasks#edit"
end

Rails.application.routes.draw do
  patch "tasks/:id", to: "tasks#update"
end

Rails.application.routes.draw do
  delete "tasks/:id", to: "tasks#destroy"
end
