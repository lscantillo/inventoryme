Rails.application.routes.draw do
  root "dashboard#index"
  resources :products do
   member do
    get :new_log
    post :create_log
   end
  end
end
