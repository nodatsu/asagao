Rails.application.routes.draw do
  root to: "top#index"

  get "about" => "top#about", as: "about"

end
