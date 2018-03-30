Rails.application.routes.draw do
  
  resources :jobs
  resources :job_categories
  resources :companies
  devise_for :job_seekers, controllers: {
  	sessions: 'job_seekers/sessions',
  	registrations: 'job_seekers/registrations',
  	passwords: 'job_seekers/passwords',
  	confirmations: 'job_seekers/confirmations',
  	unlocks: 'job_seekers/unlocks'
  }
  devise_for :employeers, controllers: {
  	sessions: 'employeers/sessions',
  	registrations: 'employeers/registrations',
  	passwords: 'employeers/passwords',
  	confirmations: 'employeers/confirmations',
  	
  	unlocks: 'employeers/unlocks'
  }
  devise_for :admins, controllers: {
  	sessions: 'admins/sessions',
  	registrations: 'admins/registrations',
  	passwords: 'admins/passwords',
  	confirmations: 'admins/confirmations',
  	
  	unlocks: 'admins/unlocks'
  }
 root to: "home#index"

 get '/browse-jobs-result' => "home#all_jobs"

end
