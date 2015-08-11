class CarpentersController < ApplicationController
    before_action :set_carpenter, only: [:show, :edit, :update, :destroy]
    # excellent use of callbacks!
    before_action :authenticate_user!, except: [:index, :show]

  def index
      @carpenters = Carpenter.all
  end

  def new
    @carpenter = Carpenter.new
  end

  def create
    @carpenter = current_user.carpenters.build(carpenter_params)
    # what is the difference between .build and .new ?
    if @carpenter.save
        redirect_to (carpenter_path(@carpenter))
      else
        render 'new'
      end
  end

  def show
  end

  def edit
  end


  def update
    if @carpenter.user.id == current_user.id
      @carpenter.update(carpenter_params)
    else
      redirect_to carpenter_path(@carpenter)
    end
  end

  def destroy
    @carpenter.destroy
      redirect_to root_url
  end


  private
  def carpenter_params
    params.require(:carpenter).permit(:name, :company, :email, :phone_number, :city, :state, :zipcode)
  end

  def set_carpenter
    @carpenter = Carpenter.find(params[:id])
  end

end
