Rails.application.routes.draw do
  get '/' => 'eaters#home'
  get 'eaters/sign_up' => 'eaters#sign_up'
  post 'eaters/new' => 'eaters#new'
  get 'thanks' => 'eaters#thanks'
  get 'dissapointed' => 'eaters#dissapointed'

  get 'jennys_super_secret_admin_stuff/create' => 'admins#create'
  post 'jennys_super_secret_admin_stuff/new' => 'admins#new'
  get 'jennys_super_secret_admin_stuff/generate' => 'admins#generate'
  get 'jennys_super_secret_admin_stuff/delete/:id' => 'admins#delete'
end
