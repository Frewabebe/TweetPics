Rails.application.routes.draw do

  scope :api do
    resources :phrases, except: [:new, :edit] do
      resources :photos, except: [:new, :edit]
    end
  end

  root to: 'home#index'

  match '*path' => 'home#index', via: :get
end
