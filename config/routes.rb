Rails.application.routes.draw do
  get '/' => 'home#top'
  get '/res' => 'home#reservation'
  get '/enter' => 'home#enter'
  post '/create' => 'home#create'
  get '/:id' => 'home#show'
  get '/res' => 'home#reservation'

  post '/:id/destroy' => 'home#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
