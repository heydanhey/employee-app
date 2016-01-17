Rails.application.routes.draw do

  get '/employees/new' => 'employees#new'
  get '/employees' => 'employees#index'
  get '/employees/:id' => 'employees#show'
  post '/employees' => 'employees#create'
  get '/employees/:id/edit' => 'employees#edit'
  patch '/employees/:id' => 'employees#update'

  get '/contact_form' => 'employees#contact'
  post '/submit' => 'employees#submit_form'
end
