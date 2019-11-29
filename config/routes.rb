Rails.application.routes.draw do

  get "login"=>"users#login_form"
  post "login"=> "users#login"
  post "logout" => "users#logout"

  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get 'users' => "users#index"
  get "users/:id"=> "users#show"

  resources :enquets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "tops#top"
end
