Rails.application.routes.draw do
  get "books/index"

  patch "books/:id/checkout", to: "books#checkout", as: :checkout_book
  patch "books/:id/return", to: "books#return_book", as: :return_book
 
  # default Rails health check endpoint
  get "up" => "rails/health#show", as: :rails_health_check
end
