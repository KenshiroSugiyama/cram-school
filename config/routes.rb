Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#top'
  get 'pages/mypage'
  get 'pages/membershipfee'

  get 'lesson/', to: 'lessons#show'
  get 'lessons/payment'
  post 'lessons', to: 'lessons#create'
  get 'lessons/new', to: 'lessons#new'
  patch 'lessons/:id/add_lesson', to: 'lessons#add_lesson'
  patch 'lessons/:id/change_payment_status', to: 'lessons#change_payment_status'
  delete 'lessons/:id', to: 'lessons#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
