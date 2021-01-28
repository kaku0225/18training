Rails.application.routes.draw do
  resource :users, controller: 'registrations', only:[:create, :edit, :update] do
    get '/sign_up', action: 'new'
    get '/home', action: 'index'
  end

  resource :users, controller: 'sessions', only:[] do
    get '/sign_in', action: 'new'
    post '/sign_in', action: 'create'
    delete '/logout', action: 'destroy'
  end
end
