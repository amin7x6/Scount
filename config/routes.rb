Rails.application.routes.draw do


  get 'overviews/index'

  get 'welcome/index'

  resources :scans, only: [:new, :create] do
    collection do
      post '/barcode' => "scans#barcode"
    end
  end

  resources :overviews, only: [:index]

   resources :categories
   resources :items


   resources :users, only: [:new, :create]
   resources :sessions, only: [:new, :create] do
     delete :destroy, on: :collection
   end

  root "welcome#index"
end
