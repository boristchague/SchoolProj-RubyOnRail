Rails.application.routes.draw do

  
  get 'example/test'
  
  get 'customer' => 'page#customer' 
  get 'supplier' => 'page#supplier' 

  #Page d'accueil
  get 'home' => 'page#home'

  #Controleur pour gérer les Clients
  #creation
  get 'addCustomer' => 'page#createcustomer'
  post 'addCustomer' => 'page#addCustomer'
  #modification
  get 'modifCustomer/:id' => 'page#modifCustomer'
  patch 'modifCustomer/:id' => 'page#updateCustomer'
  #suppression
  get 'delCustomer/:id' => 'page#delCustomer'
  delete 'delCustomer/:id' => 'page#delCustomer'


  #Controleur pour gérer les Fournisseurs
  #Création
  get 'addSupplier' => 'page#createsupplier'
  post 'addSupplier' => 'page#addSupplier'
  #Modification
  get 'modifSupplier/:id' => 'page#modifSupplier'
  patch 'modifSupplier/:id' => 'page#updateSupplier'
  #Suppression
  get 'delSupplier/:id' => 'page#delSupplier'
  delete 'delSupplier/:id' => 'page#delSupplier'


  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
