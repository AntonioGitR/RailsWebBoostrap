Rails.application.routes.draw do



  get 'books/index'
  get 'startup/index'
 


  # Route root of application to BooksController#index action
  # root "books#index"

  # Restful routes for BooksController
  resources :books
 



end
