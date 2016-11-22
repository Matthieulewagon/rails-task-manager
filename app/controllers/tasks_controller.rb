class TasksControllerController < ApplicationController
  before_action :set_tasks_manager, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  def index
    @tasks_manager = TaskManager.all
  end

  def show
  end

  def new
   @task_manager = TaskManager.new
  end

  def create
    TaskManager.create(task_manager_params)
     redirect_to tasks_path
  end

  def edit
  end

  def update
    @restaurant.update(task_manager_params)

    redirect_to task_manager_path(@task_manager)
  end

  def destroy
    @task_manager.destroy

    redirect_to tasks_path
  end

  private

  def task_manager_params
    params.require(:task_managers).permit(:name, :stars)
  end

  def set_tasks_manager
      @task_manager = TaskManager.find(params[:id])
    end
end



