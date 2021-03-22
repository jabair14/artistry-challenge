Rails.application.routes.draw do
    resources :artists, only: [:index, :show, :create, :new, :edit, :update]
    resources :instruments, only: [:index, :show, :create, :new, :edit, :update]
  
end
