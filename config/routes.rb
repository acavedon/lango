Lango::Application.routes.draw do

  devise_for :users
  root :to => "home#index"

  namespace :admin do
    resources :notes
    root :to => "main#show"
  end

end
