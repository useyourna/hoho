Rails.application.routes.draw do
    root 'home#index'
    
    get 'home/index'=>'home#index'
    get 'home/new'=>'home#new'
    get 'home/create'=>'home#create'
    get 'home/destroy/:id'=>'home#destroy'
    get 'home/edit/:post_id'=>'home#edit'
    get 'home/update/:post_id'=>'home#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
