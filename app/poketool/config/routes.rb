Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get  '/new' => 'monsters#new'
  post '/monster' => 'monsters#create'
  get  '/monster' => 'monsters#show'
  get  '/' => 'monsters#top'

end
