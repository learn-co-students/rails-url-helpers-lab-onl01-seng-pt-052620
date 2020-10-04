Rails.application.routes.draw do
   resources :students do
      get 'activate', on: :member
    end
end
