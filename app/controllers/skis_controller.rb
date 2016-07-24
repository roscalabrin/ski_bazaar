class SkisController < ApplicationController
  before_filter :require_user

  def index
    @skis = Ski.all
  end

  def show
    @ski = Ski.find(params[:id])
    @ski_category = Category.find(@ski.category_id).name
    @ski_gender  = Gender.find(@ski.gender_id).name
  end
end
