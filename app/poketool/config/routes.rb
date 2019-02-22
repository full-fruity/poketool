Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get  '/new' => 'my_monsters#new'
  get  '/my_monster/:id' => 'my_monsters#show'
  delete '/my_monster/:id' => 'my_monsters#destroy'
  post '/my_monster' => 'my_monsters#create'
  get  '/my_monster' => 'my_monsters#index'
  get  '/skill/:name' => 'skills#show'
  get  '/skill' => 'skills#index'
  get  '/monster/:name' => 'monsters#show'
  get  '/monster' => 'monsters#index'
  get  '/' => 'my_monsters#top'

end
