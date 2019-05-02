Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :narratives, except: [:new]
  end

  namespace :api do
    resources :disorders, except: [:new, :edit, :delete, :patch, :put, :create, :update, :destroy]
  end
end
