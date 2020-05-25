class ProductsController < ActionController::Base
  def index
  end

  def add_to_cart
    # Get the item from the path
    #binding.pry
   
    # Load the cart from the session, or create a new empty cart.
    #cart = session[:cart] || []
    cart << params[:product]
   
    # Save the cart in the session.
    session[:cart] = cart
    
    render :index 
  end
  
end
