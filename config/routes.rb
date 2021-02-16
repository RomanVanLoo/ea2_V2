Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#impressions"
  get "before_and_after", to: "pages#before_and_after"
  get "at_work", to: "pages#at_work"
  get "about", to: "pages#about"
end
