Rails.application.routes.draw do
  root  'static_pages#home'

  match '/music', to: 'static_pages#music', via: 'get' #match=一致,musicという名前のところ一致したら飛びますってこと

  match '/ranking', to: 'static_pages#ranking', via: 'get'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
