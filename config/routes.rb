Rails.application.routes.draw do
  get 'contact/index'

  get 'contact/show'

  get 'contact/new'

  get 'contact/edit'

  get '/customers' => 'customer#index'

  get 'customer/new'

  get '/' => 'staff#home'

  get '/signup' => "staff#new"

  post '/signup' => "staff#create"

  get '/login' => "staff#login_form"

  post '/login' => "staff#login"

  post '/logout' => "staff#logout"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
