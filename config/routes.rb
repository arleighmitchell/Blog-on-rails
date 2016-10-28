Rails.application.routes.draw do

  get '/sign-out' => 'sessions#sign_out'

  get '/sign-up' => 'sessions#sign_up'

  get '/sign-in' => 'sessions#sign_in'

  post '/sign-up' => 'sessions#sign_up_post'

  post '/sign-in' => 'sessions#sign_in_post'

  get '/profile' => 'profile#profile'

  post '/delete-post' => 'profile#delete_post'

  get '/posts/:id' => 'posts#posts'

  post '/posts' => 'posts#post'

  get '/login-failed' => 'failed_login#failed_login'

  get '/edit' => 'edit_info#edit_info'

  post '/edit' => 'edit_info#post'

  get '/' => 'home#index'

  get '/create-comment' => 'home#create_comment'

  post '/create-post' => 'home#create_post'

  post '/create-comment' => 'home#create_comment_post'

end