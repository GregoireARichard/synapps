Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "about", to: "about#index"

  root to: "main#index"
  
  get "moods", to: "moods#index"
  get "lust", to: "moods#lust"
  get "love", to: "moods#love"
  get "chill", to: "moods#chill"
  get "party", to: "moods#party"

  get "passwords", to: "passwords#edit", as: :edit_password
  patch "passwords", to: "passwords#update" 

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"
end
