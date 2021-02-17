class TasksController < ApplicationController


before_action :set_task, only: [:show, :edit, :udpate, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    # @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    # @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    # @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end

def set_task
  @task = Task.find(params[:id])
end

    # t.string "title"
    # t.text "details"
    # t.boolean "completed", default: false
    # t.datetime "created_at", precision: 6, null: false
    # t.datetime "updated_at", precision: 6, null: false
