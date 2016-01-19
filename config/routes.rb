Rails.application.routes.draw do

  get '/employees/new' => 'employees#new'
  get '/employees' => 'employees#index'
  get '/employees/:id' => 'employees#show'
  post '/employees' => 'employees#create'
  get '/employees/:id/edit' => 'employees#edit'
  patch '/employees/:id' => 'employees#update'
  delete '/employees/:id' => 'employees#destroy'

  get '/contact_form' => 'employees#contact'
  post '/submit' => 'employees#submit_form'
end
