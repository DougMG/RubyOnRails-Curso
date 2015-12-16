Rails.application.routes.draw do
  # controller = class, action == method
  get "/", controller: "questions", action: "index"

  get "cadastre-se", controller: "signup", action: "new"
end
