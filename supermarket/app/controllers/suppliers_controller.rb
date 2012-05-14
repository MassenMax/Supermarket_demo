class SuppliersController < ApplicationController
  
def index
  @suppliers = Supplier.find(:all, :include => :Category)
  
end

def new
  @supplier = Supplier.new
  
end
def create
  @supplier = Supplier.new(params[:supplier])
  
  if @supplier.save
    redirect_to suppliers_path
  else
  render :action => "new"
  end        

end
def show
  
  @supplier = Supplier.find(params[:id])
end
end
