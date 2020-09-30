Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :show]
  
  
  get 'students/:id/activate', to: 'students#activate', as: 'activate_student'
  
end

# example code
# resources :envelopes
#   get 'sessions/new'
#   get 'sessions/create'
#   delete 'sessions/destroy', to: 'sessions#destroy'
#   resources :posts
#   resources :users, only: [:new,:create]
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#   root "posts#index"
