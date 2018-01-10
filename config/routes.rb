Rails.application.routes.draw do
  get '/' => 'homes#top'
  resources :to_dos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
