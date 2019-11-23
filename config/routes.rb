Rails.application.routes.draw do
  # get 'show/:id' => 'enquets#show'
  resources :enquets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "tops#top"
end
