Rails.application.routes.draw do
  get '/' => 'home#top'
  post '/create' => 'home#create'
  get '/clear' => 'home#clear'
  get '/:id' => 'home#show'
  post '/:id/destroy' => 'home#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
