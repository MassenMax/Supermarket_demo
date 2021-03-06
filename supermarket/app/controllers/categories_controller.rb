class CategoriesController < ApplicationController
def index
  @category = Category.all
end
def new
  @category= Category.new
end
def create
  @category = Category.new(params[:category])
  
  if @category.save
    redirect_to suppliers_path
  else
  render :action => "new"
  end        

end
def edit
  @category = Category.find(params[:id])
end
def update
  @category = Category.find(params[:id])
    if @category.update_attributes(params[:category])
       redirect_to categories_path
    else
      render :action => "edit"
    end
end
def destroy
  @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
end
end
