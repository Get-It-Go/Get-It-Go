class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy, :complete]

  # GET /products
  # GET /products.json
  def index
    @cate = params[:cate]
    if params[:search]
      @products = Product.search(params[:search]).all
      @cate = "검색"
    elsif @cate.nil?
      @products = Product.all
    else
      @products = Product.where(category: @cate)
    end

  end

  # GET /products/1
  # GET /products/1.json
  def show
    if current_user
      @exist_flag=false
      conversation1 = Converstion.where(user1_id: current_user, user2_id: @product.user_id, product_id: @product.id)
      if(conversation1.count==1)
        @exist_flag=true
        @conversation=conversation1[0]
        return 
      end  
      conversation2 = Converstion.where(user1_id: @product.user_id, user2_id: current_user, product_id: @product.id)  
      if(conversation2.count==1)
        @exist_flag=true
        @conversation=conversation2[0]
        return
      end
    end  
  end

  # GET /products/new
  def new
    @product = Product.new

  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  #거래완료 표시
  def complete
    @product.status = true
    @product.save
    redirect_to action: 'index'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :content, :status, :image, :price, :address_num, :address_text, :address_text2, :user_id, :category, :delivery)
    end
end
