class GoodsController < ApplicationController

  def index
    @goods = Good.all
  end

  def new
    @good = Good.new
  end

  def create
    @good = Good.create!(good_params)
    redirect_to (good_path(@good))
  end

  def show
    @good = Good.find(params[:id])
  end

  def edit
    @good = Good.find(params[:id])
  end


  def update
    @good = Good.find(params[:id])
    @good.update(good_params)
    redirect_to good_path(@good)
  end

  def destroy
    @good = Good.find(params[:id])
    @good.destroy
    redirect_to goods_path
  end

  private
  def good_params
    params.require(:good).permit(:type, :price, :photo_url)
  end
end