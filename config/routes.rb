Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do 
      resources :rooms
      resources :students do
        resources :attendances
      end
    end
  end
end
