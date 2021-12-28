Rails.application.routes.draw do
  devise_for :users
  resources :availability
  post "select_week", to: "availability#select_week"
  get "select_week", to:  "availability#select_week"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  authenticate :user do
    root "availability#index", as: :authenticated_root
  end
  devise_scope :user do
    root to: "users/sessions#new"
  end
end
