Rails.application.routes.draw do
  
resources :pics do
  member do
    get "like",to: "pics#upvote"
  end
end

root "pics#index"
devise_for :users 

devise_scope :user do
  get "/users/sign_out" =>"devise/sessions#destroy"
end
end
