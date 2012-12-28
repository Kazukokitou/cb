Cb::Application.routes.draw do
  resources :inquiries, :only => [:create, :new]

  get "pages/home"

  get "pages/concept"

  get "pages/menu"

  get "pages/shop_info"

  root :to => "pages#home"
end
