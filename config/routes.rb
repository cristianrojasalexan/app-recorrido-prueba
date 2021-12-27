Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  authenticate :user do
    root "availability#index", as: :authenticated_root
  end
  devise_scope :user do
    root to: "users/sessions#new"
  end
end
