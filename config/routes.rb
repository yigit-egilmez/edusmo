Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/get'
  post'welcome/save'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
