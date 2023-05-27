class Admin::MachinesController < ApplicationController
  def index
    @machines = Machine.all
  end

  def new
     @machine = Machine.new
  end

  def create
    @machine = Machine.new(machine_params)
    if @machine.save
      redirect_to admin_machine_path(@machine.id)
    else
      render :new
    end

  end

  def show
    @machine = Machine.find(params[:id])
    @process_controls = @machine.process_controls.where(status: 1)
  end

  def edit
    @machine = Machine.find(params[:id])

  end

  def update
    @machine = Machine.find(params[:id])
    @machine.update(machine_params)
    redirect_to admin_machine_path(@machine)
  end

  def destroy
    @machine = Machine.find(params[:id])
    @machine.destroy
    redirect_to admin_machines_url, notice: "削除しました。"
  end

   private

  def machine_params
    params.require(:machine).permit(:machine_unit, :machine_number, :destroy)
  end

end
