Rails.application.routes.draw do
  resources :attendances
  namespace :api do
    namespace :v1 do 
      resources :students
      resources :rooms
    end
  end
end
