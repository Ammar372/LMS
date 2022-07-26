Rails.application.routes.draw do
 
  # get 'authors/index'
  # get 'authors/show'
  # get 'authors/new'
  # get 'authors/edit'
  # get 'authors/delete'
  # get 'books/index'
  # get 'books/show'
  # get 'books/new'
  # get 'books/edit'
  # get 'books/delete'
  # get 'categories/index'
  # get 'categories/show'
  # get 'categories/new'
  # get 'categories/edit'
  # get 'categories/delete'

  
  namespace :api,defaults:{format: :json} do
    namespace :v1 do
      resources :books
  resources :authors
  resources :categories
  
  
end
end

# root to:"home#index"
# get "home/books"


# get "home/authors"
# get "home/categories"


 



 resources :categories do

  member do
    get :delete

 end
end

 resources :books do

  member do
    get :delete

 end
end


 resources :authors do

  member do
    get :delete

 end
end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
