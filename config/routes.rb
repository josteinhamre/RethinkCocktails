Rails.application.routes.draw do
  root 'cocktails#index'
  resources :cocktails, except: [:destroy, :index]
end
