Rails.application.routes.draw do
  get '/courses', to: 'courses#index'
  get '/courses/:id', to: 'courses#show', as: 'course'
  resources :universities
  root to: 'courses#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
