Rails.application.routes.draw do
  root 'estimates#new'
  get "/nuevo-presupuesto", to: "estimates#new", as: 'nuevo-presupuesto'
  post "/presupuesto", to: "estimates#create", as: 'presupuesto'
end
