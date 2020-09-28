Rails.application.routes.draw do
  resources :students 
  get '/students/:id/activate', to: 'students#activate', as: 'activate_student' 
end




# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   resources :posts, only: [:index, :show]
# end

