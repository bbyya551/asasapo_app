Rails.application.routes.draw do
  namespace :admin do
    get 'groups/index'
    get 'groups/show'
    get 'posts/show'
    get 'posts/index'
    get 'homes/top'
  end
  namespace :public do
    get 'groups/new'
    get 'groups/index'
    get 'groups/edit'
    get 'groups/show'
    get 'posts/new'
    get 'posts/index'
    get 'posts/show'
    get 'posts/edit'
    get 'users/show'
    get 'users/edit'
    get 'users/index'
  end
  devise_for :admin,skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}
  devise_for :users,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
