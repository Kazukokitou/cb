Cb::Application.routes.draw do
  resources :inquiries, only: %w(create new)

  resource :concept, only: :show
  resource :menu, only: :show
  resource :shop_info, only: :show

  root to: "homes#show"

  # Keep old paths
  match "pages/concept" => redirect('/concept')
  match "pages/menu" => redirect('/menu')
  match "pages/shop_info" => redirect('/shop_info')
end
