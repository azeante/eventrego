Rails.application.routes.draw do
  resources :attendees
  resources :presenters
  resources :events
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end