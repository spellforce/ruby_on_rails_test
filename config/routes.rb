Rails.application.routes.draw do
  get 'curd/add_course'
  post 'curd/add_course'
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
