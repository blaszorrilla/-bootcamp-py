class ProductsController < ApplicationController
  def index
      @products = Product.all
  end
  def new
    @product = Product.new
  end
  def show
    @product = Product.find(params[:id])
  end
  
  def create
    @product = Product.new(products_params)

    if @product.save
      redirect_to products_path, notice: 'Producto creado correctamente'
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(products_params)
      redirect_to products_path, notice: 'Producto actualizado correctamente'
    else
      render :edit, status: :unprocessable_entity
    end
  end
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_path, notice: "Producto  eliminado correctamente" }
      format.json { head :no_content }
    end
   
  end
  def products_params
    params.require(:product).permit(:name, :description, :image, :price)
  end
end
