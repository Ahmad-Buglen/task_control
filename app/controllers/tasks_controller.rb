class TasksController < ApplicationController
  
  before_action  :authenticate_user!

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end


  def index
    tasks = Task.all.to_a
    @news = tasks.select {|x| x.status == 'new'}
    @in_progress = tasks.select {|x| x.status == 'in_progress'}
    @complete = tasks.select {|x| x.status == 'complete'}
    @canceled = tasks.select {|x| x.status == 'cancel'}
  end


  def change_state
    task = Task.find(params[:task_id].to_i)
    if (task.status == 'new' && params[:state] == 'in_progress') ||
        (task.status == 'in_progress' && params[:state] == 'complete') ||
          (task.status == 'in_progress' && params[:state] == 'canceled')
      task.status = params[:state]
      task.completed_at = params[:state] == "complete" ? Time.now : nil
      task.canceled_at = params[:state] == "canceled" ? Time.now : nil
      begin
        task.save!
        flash[:notice] = "Status successfully changed"
      rescue
        flash[:alert] = "Error when update task status"
      end
    else
      flash[:alert] = "Error status for task"
    end
    redirect_to root_url
  end

  def approove
    
  end

  private
    def task_params
      params.require(:task).permit(:name, :deadline)
    end
end
