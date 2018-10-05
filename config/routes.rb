Rails.application.routes.draw do
  resources :email_attachments
  resources :email_reports
  resources :email_configs
  resources :reports
  resources :status_types
  resources :report_types
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
