class Public::ProcessControlsController < ApplicationController
  def index
    @process_controls = ProcessControl.all#.where(status: 1)
  end

  def new
     @process_control = ProcessControl.new
  end

  def create
    @process_control = ProcessControl.new(process_control_params)
    @machine = Machine.find(process_control_params[:machine_id])
    @instruction = Instruction.find(process_control_params[:instruction_id])
    @process_control.machine = @machine
    @process_control.instruction = @instruction
    if @process_control.save
      redirect_to process_control_path(@process_control.id)
    else
      render :new
    end
  end

  def show
    @process_control = ProcessControl.find(params[:id])
    #@process_controls = ProcessControl.find(params[:id])
    #@machine = @process_control.machine
    #@process_controls = @machine.process_controls.where(status: 1)

  end

  def edit
    @process_control = ProcessControl.find(params[:id])

  end

  def update
    @process_control = ProcessControl.find(params[:id])
    @process_control.update(process_control_params)
    redirect_to process_control_path(@process_control)
  end
  
  def destroy
    @process_control = ProcessControl.find(params[:id])
    @process_control.destroy
    redirect_to process_controls_url, notice: "削除しました。"
  end

   private

  def process_control_params
    params.require(:process_control).permit(:instruction_id, :machine_id, :temperature_set, :temperature_out, :check_exterior, :check_line, :check_paint, :check_neme, :status, :destroy)
  end



end
