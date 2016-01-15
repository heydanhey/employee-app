Rails.application.routes.draw do
  get '/one' => 'employees#show_one'
  get '/all' => 'employees#show_all'

  get '/contact_form' => 'employees#contact'
  post '/submit' => 'employees#submit_form'
end
