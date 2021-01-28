Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/pages/*id" => 'pages#show', as: :page, format: false

  # if routing the root path, update for your controller
  root to: 'pages#show', id: 'welcome'
end
