Cb::Application.routes.draw do
  root to: "information#show"
  resource :concept, only: :show
  resource :menu, only: :show
  resource :shop_info, only: :show
  resource :contact, only: %w(show create)
  
  namespace :admin do
    resources :information, except: :show
  end

  # Keep old paths
  match "pages/concept" => redirect('/concept')
  match "pages/menu" => redirect('/menu')
  match "pages/shop_info" => redirect('/shop_info')
  match "inquiries/new" => redirect('/contact')

  match '*path' => redirect('/') unless Rails.env.development?
end
