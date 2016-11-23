Rails.application.routes.draw do
  root "search#index"

  resources "search"
end
