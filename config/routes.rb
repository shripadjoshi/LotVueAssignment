Rails.application.routes.draw do
  resources :users, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :roles, only: [:index, :new, :create, :edit, :update, :destroy]
  get 'roles/hidden', to: 'roles#hidden_roles'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
