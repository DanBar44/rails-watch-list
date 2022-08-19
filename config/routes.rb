Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "lists#index"
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: [:destroy]
# faire un rails routes -g lists => dans le terminal
end

# =>rails routes -g lists
# Prefix Verb URI Pattern                             Controller#Action
# list_bookmarks POST /lists/:list_id/bookmarks(.:format)     bookmarks#create
# new_list_bookmark GET  /lists/:list_id/bookmarks/new(.:format) bookmarks#new
#          lists GET  /lists(.:format)                        lists#index
#                POST /lists(.:format)                        lists#create
#       new_list GET  /lists/new(.:format)                    lists#new
#           list GET  /lists/:id(.:format)                  lists#show

# =>rails routes -g bookmark
# Prefix Verb   URI Pattern                             Controller#Action
# list_bookmarks POST   /lists/:list_id/bookmarks(.:format)     bookmarks#create
# new_list_bookmark GET    /lists/:list_id/bookmarks/new(.:format) bookmarks#new
#       bookmark DELETE /bookmarks/:id(.:format)                bookmarks#destroy
