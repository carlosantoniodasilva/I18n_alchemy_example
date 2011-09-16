class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id]).localized
  end

  def new
    @product = Product.new.localized
  end

  def create
    @product = Product.new.localized
    if @product.update_attributes(params[:product])
      redirect_to @product, :notice => "Successfully created product."
    else
      render :action => 'new'
    end
  end

  def edit
    @product = Product.find(params[:id]).localized
  end

  def update
    @product = Product.find(params[:id]).localized
    if @product.update_attributes(params[:product])
      redirect_to @product, :notice  => "Successfully updated product."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_url, :notice => "Successfully destroyed product."
  end
end
