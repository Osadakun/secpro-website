Rails.application.routes.draw do
  get '/' => 'home#top'
  get '/res' => 'home#reservation'
  get '/enter' => 'home#enter'
  post '/update' => 'home#update'
  post '/create_enter' => 'home#create_enter'
  post '/create_res' => 'home#create_res'
  get '/:id' => 'home#show'
  get '/:id/edit' => 'home#edit'
  get '/:id/destroy' => 'home#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
