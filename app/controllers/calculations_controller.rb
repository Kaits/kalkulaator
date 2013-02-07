class CalculationsController < ApplicationController
  def index
    @calculations = Calculation.all
  end

  def show
    @calculation = Calculation.find(params[:id])
  end

  def new
    @calculation = Calculation.new
  end

  def create
    @calculation = Calculation.new(params[:calculation])

    if @calculation.save
      redirect_to calculations_path, :notice => "Aktsia on salvestatud!"
    else
      render "new"
    end
  end

  def edit
    @calculation = Calculation.find(params[:id])
  end

  def update
    @calculation = Calculation.find(params[:id])

    if @calculation.update_attributes(params[:calculation])
      redirect_to calculations_path, :notice => "Uuendatud!"
    else
      render "edit"
    end
  end

  def destroy

@calculation = Calculation.find(params[:id])
	@calculation.destroy
	redirect_to calculations_path, :notice => "Aktsia on kustutatud!"
  end
end
