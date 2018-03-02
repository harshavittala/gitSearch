Rails.application.routes.draw do
  get 'git_srch/index'
  root 'git_srch#index'
  get 'git_srch/display'
  get 'git_srch/first'
  get 'git_srch/last'
  get 'git_srch/next'
  get 'git_srch/previous'
  get 'git_srch/go'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
