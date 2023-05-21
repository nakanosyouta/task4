class Public::InstructionsController < ApplicationController
  def index
    @instructions = Instruction.all
  end

  def new
     @instruction = Instruction.new
  end

  def create
    @instruction = Instruction.new(instruction_params)
    if @instruction.save
      redirect_to admin_instruction_path(@instruction.id)
    end

  end

  def show
    @instruction = Instruction.find(params[:id])

  end

  def edit
    @instruction = Instruction.find(params[:id])

  end

  def update
    @instruction = Instruction.find(params[:id])
    @instruction.update(instruction_params)
    redirect_to admin_instruction_path(@instruction)
  end

   private

  def instruction_params
    params.require(:instruction).permit(:product_name, :conductor, :conductor_range, :insulator, :insulator_range, :finish, :finish_range, :delivery, :order, :volume, :bobbin, :temperature_top, :temperature_under, :paint_top, :paint_under, :speed, :product_time, :lubricant, :apply, :material, :delivery, :ovrview, :work_name)
  end
  
end
