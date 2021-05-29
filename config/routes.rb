Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#top'
  get 'pages/mypage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
