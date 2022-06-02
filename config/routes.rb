Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :libsaml do
    scope ':idp' do
      resource :session, only: [:show, :create]
    end
  end
end
