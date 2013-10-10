MasterControl::Application.routes.draw do
  resources :controls

	get "controls/index"

  post "controls/make_reboot_call"

  post "controls/make_chef_call"
end
