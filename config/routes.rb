Survey::Application.routes.draw do
  get "sessions/new"

  resources :users
  # GET /users           index    list of all item
  # GET /users/new       new      return new user form
  # POST /users          create   create a new user
  # GET /users/:id       show     display a specific user
  # GET /users/:id/edit  edit     return page for editing user
  # PUT /users/:id       update   update specific user
  # DELETE /users/:id    destroy  delete specific user
  post "survay" =>  "survay#create"
  get "survay" => "survay#index"
  get "survay/:id/edit" => "survay#edit"
  put "survay/:id" => "survay#update"
  get "survay/:id" => "survay#show"
  delete "survay/:id" => "survay#destroy"
  post "answer" => "answer#create"
  
  
  post "question" => "question#create"
  get "question" => "question#index"
  get "question/:id/edit" => "question#edit"
  put "question/:id" => "question#update"
  get "question/:id" => "question#show"
  delete "question/:id" => "question#destroy"

  resources :sessions, :only => [:new, :create, :destroy]

  match '/signup', :to => 'users#new'
  match '/signin',   :to => 'sessions#new'
  match '/signout',  :to => 'sessions#destroy'
  match '/newsurvey',   :to => 'survay#survay' 
  match '/surveyList', :to => 'survay#surveylist'
  match '/msg', :to => 'question#msg'
  match '/index',   :to => 'survay#index'
  match '/qusindex', :to => 'question#index'
  match '/newquestion', :to => 'question#question'
  match '/usersurvey', :to => 'survay#usersurveylist'
  match '/takesurvey', :to => 'answer#takesurvey'
  match '/answerindex', :to => 'answer#index'
  
  
  root :to => 'sessions#new'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
    #resources :survays do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end


end
