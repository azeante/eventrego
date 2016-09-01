Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/help'

  root 'application#home'
  resources :volunteers
  resources :organisers
  resources :attendees
  resources :presenters
  resources :events
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
