Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'

  
  get '/military_branches', to: "military_branches#index"

  get '/military_branches/new', to: 'military_branches#new'
  post '/military_branches', to: 'military_branches#create'

  #user story 2

  get "/military_branches/:id", to: 'military_branches#show'

  #User story 3

  get '/aircrafts', to: "aircrafts#index"

  #User story 4

  get '/aircrafts/:id', to: 'aircrafts#show'

  #User Story 5

  get '/military_branches/:id/aircrafts', to: 'military_branches_aircrafts#index'

  #User Story 6

  #user story 7
  #Routing of of existing page


end
