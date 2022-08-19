Rails.application.routes.draw do
  root :to => "homes#top"
  get 'books/new'
  get 'books'=>'books#index'

  post 'books' => 'books#create'
  get 'books/edit'
  get '/top' => "homes#top"
  get 'books/:id' => 'books#show', as: 'book'
  delete 'books/:id' =>'books#destroy',as: 'destroy_book'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
