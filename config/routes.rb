Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :tradelines

  resources :payments # probably overkill, but quick 'n' easy
end
