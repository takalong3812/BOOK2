Rails.application.routes.draw do
  
  root to: "homes#top"
  get "home/about"=> "homes#about"
  
  devise_for :users, controllers:{
  registrations: "user/registrations",
  sessions: 'user/sessions'
}
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
