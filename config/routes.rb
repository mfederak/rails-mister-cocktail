Rails.application.routes.draw do
  resources :cocktails, except: [ :edit, :update, :destroy ] do
    resources :doses, only: [ :new, :create, :destroy ]
  end
end
