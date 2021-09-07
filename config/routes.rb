Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do
        resources :users do 
          resources :entries 
        end
      end 
  end
end
