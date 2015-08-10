class GoodsController < ApplicationController
    before_action :set_good, only: [:show, :edit, :update, :destroy]
    before_action :set_carpenter, only: [:new, :create, :show, :edit, :update, :destroy]
    before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]

  def index
    @goods = Good.all
  end

  def new
    @good = Good.new
  end

  def create
    @good = @carpenter.goods.new(good_params)
      if @good.save
        redirect_to carpenter_good_path(@carpenter)
      else
        render 'new'
      end
  end

  def show
    @good.carpenter
  end

  def favorite
    current_user.goods << good
  end

  def edit
  end


  def update
      if @good.save
        redirect_to carpenter_goods_path(@carpenter, @good)
      else
        render 'edit'
      end
  end

  def destroy
    @good.destroy
    redirect_to carpenter_goods_path
  end

  private
  def good_params
    params.require(:good).permit(:make, :price, :photo_url)
  end
  def set_good
    @good = Good.find(params[:id])
  end
  def set_carpenter
    @carpenter = Carpenter.find(params[:carpenter_id])
  end
end
