Rails.application.routes.draw do
  post 'event/new'

  get "up" => "rails/health#show", as: :rails_health_check

end
