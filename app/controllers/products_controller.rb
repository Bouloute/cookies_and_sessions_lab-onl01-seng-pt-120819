class ProductsController < ApplicationController
  def index
  end

  def add_to_cart
    
    # Load the cart from the session, or create a new empty cart.
    #cart = session[:cart] || [] # This is same as helper_method "cart"
    cart << params[:product]# Get the item from the path
   
    # Save the cart in the session.
    #session[:cart] = cart #no need for this as cart renders the session
    
    render :index 
  end
  
end
