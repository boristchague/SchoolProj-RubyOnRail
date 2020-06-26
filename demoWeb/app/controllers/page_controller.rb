class PageController < ApplicationController
  #page d'acceuil
  def home

    @var = "23.06.2020"
  end


  #############################################################
  #Route associé à la gestion des client
  #affichage
  def customer

    @clients = Customer.all

  end 
  #Ajout
  def addCustomer  
    
    Customer.create first_name: params[:First_Name], last_name: params[:Last_Name], email: params[:Email],  adresse: params[:Address] 
    redirect_to "/customer"
  end

  # affichage de la modification
  def modifCustomer

    @cst = Customer.find(params[:id]) 
  end 

  #modification 
  def updateCustomer
    Customer.find(params[:id]).update  first_name: params[:First_Name], last_name: params[:Last_Name], email: params[:Email],  adresse: params[:Address]
  redirect_to "/customer"
  end

  #affichage de la suppression
  def delCustomer
    @cst = Customer.find(params[:id]) 
  end 

  #suppression
  def delCustomer
    Customer.find(params[:id]).destroy
    redirect_to "/customer"
  end



  ################################################
  #Route associé à la gestion des client
  def supplier

    @frs = Supplier.all

  end 



  def addSupplier
    
      Supplier.create first_name: params[:First_Name], last_name: params[:Last_Name], email: params[:Email],  adresse: params[:Address] 
      redirect_to "/supplier"

  end



  def modifSupplier

    @sp = Supplier.find(params[:id])
    #print variable
  end 

  def updateSupplier
    Supplier.find(params[:id]).update  first_name: params[:First_Name], last_name: params[:Last_Name], email: params[:Email],  adresse: params[:Address]
  redirect_to "/supplier"
  end

  def delSupplier
    Supplier.find(params[:id]).destroy
    redirect_to "/supplier"
  end

    


end
