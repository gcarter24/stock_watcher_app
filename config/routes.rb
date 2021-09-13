Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/stocks/stocks1" => "stocks#stocks"
    get "/stocks/:name" => "stocks#search"
    get "/stocks" => "stocks#index"
  end
end
