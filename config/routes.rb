Rails.application.routes.draw do
  get '/one' => 'employees#show_one'
  get '/all' => 'employees#show_all'
end
