Rails.application.routes.draw do
  default_url_options host: "ea2.be"
  devise_for :users, skip: [:registrations]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#impressions"
  get "before_and_after", to: "pages#before_and_after"
  get "at_work", to: "pages#at_work"
  get "about", to: "pages#about"
  get "antiques", to: "pages#antiques"
  get "arts", to: "pages#arts"
  get "flooring", to: "pages#flooring"
  resource :articles, only: [:new, :create, :edit, :update, :destroy, :show]
  resource :messages, only: [:create]
  get "admin", to: "articles#index"
  get "toggle_arts", to: "settings#toggle_arts", as: "toggle_arts"
  get "toggle_antiques", to: "settings#toggle_antiques", as: "toggle_antiques"
  get "toggle_flooring", to: "settings#toggle_flooring", as: "toggle_flooring"
end
