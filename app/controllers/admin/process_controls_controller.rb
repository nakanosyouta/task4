class Admin::ProcessControlsController < ApplicationController
  def index
    @process_controls = ProcessControl.all
  end

  def new
     @process_control = ProcessControl.new
  end

  def create
    @process_control = ProcessControl.new(process_control_params)
    if @process_control.save
      redirect_to admin_process_control_path(@process_control.id)
    end

  end

  def show
    @process_control = ProcessControl.find(params[:id])

  end

  def edit
    @process_control = ProcessControl.find(params[:id])

  end

  def update
    @process_control = ProcessControl.find(params[:id])
    @process_control.update(process_control_params)
    redirect_to admin_process_control_path(@process_control)
  end

   private

  def process_control_params
    params.require(:process_control).permit(:temperature_set, :temperature_out, :check_exterior, :check_line, :check_paint, :check_neme)
  end
  
end
