Rails.application.routes.draw do
  resources :portfolios

  get 'about', to: "pages#about"
  get 'contact', to: "pages#contact"
  get 'home', to: "pages#home"

  resources :blogs

  get 'angular-items', to:"portfolios#angular"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
