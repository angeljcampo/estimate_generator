Rails.application.routes.draw do
  root 'estimates#index'
  get "/panel", to: "estimates#index", as: 'panel-presupuesto'
  get "/nuevo-presupuesto", to: "estimates#new", as: 'nuevo-presupuesto'
  post "/presupuesto", to: "estimates#create", as: 'presupuesto'
  get "plans/index"
end
