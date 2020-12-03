Rails.application.routes.draw do
  
  namespace 'api' do
    namespace 'v1' do 
      resources :users
    end
  end

  get '/users', to: redirect('/api/v1/users')
end