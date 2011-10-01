class ElementsController < ApplicationController
 
  def index
    @elements = Element.all
    @element14 = Element.find_by_id(14)
  end

  def new
    @element = Element.new
    @elements = Element.all
  end

  def create
    @element = Element.new(params[:element])
    @element.save
    redirect_to elements_path
  end

  def edit
    @element = Element.find(params[:id])
    @elements = Element.all
#    @selected_element = @elements.find_by_parent_id(@element.parent_id)
  end

  def update
    @element = Element.find(params[:id])
    @element.update_attributes(params[:element])
    redirect_to elements_path
  end

  def destroy
    @element = Element.find(params[:id])
    @element.delete
    redirect_to elements_path
  end

end
