Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'

  
  get '/military_branches', to: "military_branches#index"

  get '/military_branches/new', to: 'military_branches#new'
  post '/military_branches', to: 'military_branches#create'
end
