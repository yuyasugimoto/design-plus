Rails.application.routes.draw do
  get '/form-request' , to: "formrequest#index"
  get '/', to: "login#index"
  get '/main', to:"index#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/request', to:"formrequest#insert"
end
