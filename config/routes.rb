Rails.application.routes.draw do
  get '/' => 'eaters#home'
  get 'eaters/sign_up' => 'eaters#sign_up'
  post 'eaters/new' => 'eaters#new'
  get 'thanks' => 'eaters#thanks'
  get 'dissapointed' => 'eaters#dissapointed'

  get 'arity_admin_url/create' => 'admins#create'
  post 'arity_admin_url/new' => 'admins#new'
  get 'arity_admin_url/generate' => 'admins#generate'
  get 'arity_admin_url/delete/:id' => 'admins#delete'
end
