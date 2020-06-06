Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # Parent/child relationship.Author being parent and post being child(belongs to author)
  resources :authors, only: [:show] do 
    #nested resource for posts
    resources :posts, only: [:show, :index]
  end
  # deost the same thing
  # get 'authors/:id/posts', to: "authors#posts_index"
  # get  'authors/:id/posts/:post_id', to: "authors#posts"



  resources :posts, only: [:index, :show, :new, :create, :edit, :update]


  root 'posts#index'

end
