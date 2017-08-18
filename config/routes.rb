Rails.application.routes.draw do

  scope :api do
    resources :tweets, except: [:new, :edit] do
      resources :pictures, except: [:new, :edit]
    end
  end

  root to: 'home#index'

  match '*path' => 'home#index', via: :get
end
