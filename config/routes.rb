Rails.application.routes.draw do
  post "events/new"
  get "events/:uuid", to: "events#show"

  get "up" => "rails/health#show", as: :rails_health_check
end
