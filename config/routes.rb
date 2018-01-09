Rails.application.routes.draw do
    get '/' => 'staff#home'

  get 'contact/index'

  get 'contact/show'

  get 'contact/new'

  get 'contact/edit'

  get '/register' => 'customer#new'

  post '/register' => 'customer#create'

  get '/customers' => 'customer#index'


  get '/signup' => "staff#new"

  post '/signup' => "staff#create"

  get '/login' => "staff#login_form"

  post '/login' => "staff#login"

  post '/logout' => "staff#logout"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
