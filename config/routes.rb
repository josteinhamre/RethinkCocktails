Rails.application.routes.draw do
  resources :cocktails, except: [:destroy]
end
