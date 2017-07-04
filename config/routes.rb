Rails.application.routes.draw do
  scope ":locale", locate: /en|pt/ do
	resources :rooms
	resources :users
   end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/:locale' => 'home#index', locale: /en|pt/
  root "home#index"

end
