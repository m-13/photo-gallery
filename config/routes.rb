Rails.application.routes.draw do
  devise_for :users

  root 'gallery#home'
  post '/upload', to: 'gallery#upload', as: :upload
  get '/photos/delete/:id', to: 'gallery#delete_photo', as: :delete_photo
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
