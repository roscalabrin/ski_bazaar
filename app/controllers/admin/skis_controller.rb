class Admin::SkisController < ApplicationController
  before_action :set_ski, only: [:show, :edit, :update, :destroy]

  def index
    @skis = Ski.all
  end

  def show
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
    flash.notice = "Ski #{@ski.name} Deleted!"

    redirect_to skis_path
  end

  private

  def ski_params
    params.require(:admin).permit(:name, :brand, :width, :length, :category_id, :gender_id)
  end

  def set_ski
    @ski = Ski.find(params[:id])
  end
end