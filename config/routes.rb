Rails.application.routes.draw do
  get '/' => 'staff#home'

  get 'contact/index'



  get 'contact/new' => "contact#new"

  post 'contact/create' => "contact#create"

   get 'contact/:id' => "contact#show"

   get 'contact/:id/edit' => "contact#edit"

   post 'contact/:id/update' => "contact#update"

  get '/register' => 'customer#new'

  post '/register' => 'customer#create'



   get '/customers' => 'customer#index'


   get '/customers/:id' => "customer#show"

  get '/customers/:id/edit' => "customer#edit"

  post '/customers/:id/update' => "customer#update"


  get '/signup' => "staff#new"

  post '/signup' => "staff#create"

  get '/login' => "staff#login_form"

  post '/login' => "staff#login"

  post '/logout' => "staff#logout"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
