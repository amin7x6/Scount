Rails.application.routes.draw do

  get 'welcome/index'

   resources :categories 
   resources :items


   resources :users, only: [:new, :create]
   resources :sessions, only: [:new, :create] do
     delete :destroy, on: :collection
   end

  root "welcome#index"
end
