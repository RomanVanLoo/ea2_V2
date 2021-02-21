Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#impressions"
  get "before_and_after", to: "pages#before_and_after"
  get "at_work", to: "pages#at_work"
  get "about", to: "pages#about"
  get "antiques", to: "pages#antiques"
  resource :articles, only: [:new, :create, :edit, :update, :destroy, :show]
  get "admin", to: "articles#index"
  get "toggle_arts", to: "settings#toggle_arts", as: "toggle_arts"
  get "toggle_antiques", to: "settings#toggle_antiques", as: "toggle_antiques"
end
