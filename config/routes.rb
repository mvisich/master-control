MasterControl::Application.routes.draw do
  resources :control

	get "control/index"

  post "control/make_reboot_call"

  post "control/make_chef_call"
end
