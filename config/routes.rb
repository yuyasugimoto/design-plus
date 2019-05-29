Rails.application.routes.draw do
  resources :pages
  get '/form-request' , to: "formrequest#index"
  get '/', to: "login#index"
  get '/main', to:"index#index"
  get '/request-get' , to: "formrequest#get"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/request', to:"formrequest#insert"
  post '/login', to:"login#login"
end
