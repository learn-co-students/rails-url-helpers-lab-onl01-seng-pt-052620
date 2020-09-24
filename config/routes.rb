Rails.application.routes.draw do
  resources :students, only: [:index, :show]
  resources :students do 
    get 'activate', on: :member 
  end
end
