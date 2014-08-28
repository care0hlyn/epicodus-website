Rails.application.routes.draw do
  match('/', { :via => :get, :to => 'section#index'})
  match('lessons', { :via => :get, :to => 'lesson#index'})
  match('lessons/new', {:via => :get, :to => 'lesson#new'})
  match('lessons', { :via => :post, :to => 'lesson#create'})
  match('lessons/:id/', { :via => :get, :to => 'lesson#show'})
  match('lessons/:id/edit', { :via => :get, :to => 'lesson#edit'})
  match('lessons/:id/', { :via => [:patch, :put], :to => 'lesson#update'})
  match('lessons/:id', { :via => :delete, :to => 'lesson#delete'})

  match('sections', { :via => :get, :to => 'section#index'})
  match('sections/new', { :via => :get, :to => 'section#new'})
  match('sections', { :via => :post, :to => 'section#create'})
  match('sections/:id/edit', { :via => :get, :to => 'section#edit'})


end
