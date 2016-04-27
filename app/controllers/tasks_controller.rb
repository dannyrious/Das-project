class ListsController < ApplicationController
  
  def new
    @task = Task.new
  end
  
  def index
    @tasks = Task.all
  end
  
  def show
    @task = Task.find(params[:id])
  end
  
  def edit
    @task = Task.find(params[:id])
  end
  
  def create
    @task = Task.new(address_params)
    if @task.save
      redirect_to tasks_path
    else
      flash[:danger] = 'Empty obligatory fields'
      render 'new'
    end
  end
  
  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(task_params)
      flash[:success] = "Task edited"
      redirect_to tasks_path
    else
      flash[:danger] = 'Empty obligatory fields'
      render 'edit'
    end
  end
  
  def destroy
    Task.find(params[:id]).destroy
    flash[:success] = "Task eliminated"
  end
  
  private
  
  def task_params
     params.require(:list).permit(:name, :description, :date, :status)
  end
  

end
