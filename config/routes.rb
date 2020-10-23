Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :application, only: [] do
      collection do
        get :get_image
      end
    end
end
