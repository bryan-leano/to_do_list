class ToDosController < ApplicationController
  def index
    @to_dos = ToDo.all
  end

  def show
   @to_dos = ToDo.find(params[:id])
  end

  def edit
    @to_dos = ToDo.find(params[:id])
  end

  def update
    @to_dos = ToDo.find(params[:id])
    if @to_dos.update(todo_params)
      redirect_to to_do_path(@to_dos)
    else
      render :edit
    end
  end

  def new
    @to_dos = ToDo.new
  end

  def create
  end

  def destroy
  end

  private
  def todo_params
    params.require(:to_do).permit(:item,:description,:completed)
  end
  
end


