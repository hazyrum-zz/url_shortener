UrlShorten::Application.routes.draw do
  resources :urls
  match '/:shortcode' => 'urls#redirect'

end
