Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users
  get 'welcome/index'

  namespace :api do
    namespace :v1 do
      resources :products
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
