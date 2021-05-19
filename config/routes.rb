Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get "/users/sign_out" => "devise/sessions#destroy"
    resources :users, only: %i[show edit update]
  end
  authenticated :user do
    root "dashboard#show", as: :authenticated_root
  end
  get "/profile/:username", to: "user#show", as: "user_profile"

  resources :projects do
    resources :announcements, module: "projects"
    resources :tasks, module: "projects"
    resources :tickets, module: "projects" do
      post "archive" => "tickets#archive"
    end
  end
  root "homepage#index"
end
