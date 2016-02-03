Rails.application.routes.draw do
  get "/" => "site#home"

  resources(:projects, only: [:show, :new, :create, :index]) do
    resources :entries, only: [:index, :new, :create, :edit, :update]
  end
end

