Rails.application.routes.draw do
  resources :items, only: [:index,:show,:create] 

  resources :users, only: [:index,:show,:create] do 
    resources :items, only: [:index,:show,:create] 
  end 

end
