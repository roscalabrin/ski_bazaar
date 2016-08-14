class Admin::SkisController < Admin::BaseController
  before_action :admin?

  before_action :set_ski, only: [:show, :edit, :update, :destroy]

  def index
    redirect_to skis_path
  end

  def show
    redirect_to @ski
  end

  def new
    @ski = Ski.new
  end

  def create
    @ski = Ski.create(ski_params)
    if @ski.save
      redirect_to admin_ski_path(@ski)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @ski.update(ski_params)
      redirect_to @ski
    else
      render :edit
    end
  end

  def destroy
    @ski.destroy
    flash.notice = "#{@ski.name} | #{@ski.name} was deleted!"
    redirect_to admin_skis_path
  end

  private

  def ski_params
    params.require(:ski).permit(:name, :brand, :width, :length, :category_id, :gender_id, :image)
    # params.require(:admin).permit(:name, :brand, :width, :length).merge(params.require(:ski).permit(:category_id, :gender_id))
  end

  def set_ski
    @ski = Ski.find(params[:id])
  end
end
