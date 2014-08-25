class LinesController < ApplicationController
  def index
    @lines = Line.all
  end

  def new
    @line = Line.new
  end

  def create
    @line = Line.new(line_params)
    if @line.save
      flash[:notice] = "Line created."
      redirect_to lines_path
    else
      render 'new'
    end
  end

  def show
    @line = Line.find(params[:id])
  end

  def edit
    @line = Line.find(params[:id])
  end

  def update
    @line = Line.find(params[:id])
    @line.stations = []
    params[:line][:station_ids].each do |station|
      if station != ""
        @line.stations << Station.find(station)
      end
    end
    if @line.update(line_params)
      flash[:notice] = "Line updated."
      redirect_to line_path(@line)
    else
      render 'edit'
    end
  end

  def destroy
    @line = Line.find(params[:id])
    @line.destroy
    flash[:notice] = "Line deleted."
    redirect_to lines_path
  end

  private
  def line_params
    params.require(:line).permit(:name, :station_id, station_ids: [])
  end
end
