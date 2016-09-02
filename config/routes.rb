Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'

  resources :volunteers
  resources :organisers
  resources :attendees
  resources :presenters
  resources :events
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
