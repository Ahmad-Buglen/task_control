class TasksController < ApplicationController
  
  before_action  :authenticate_user!

  def index
    tasks = Task.all.to_a
    @news = tasks.select {|x| x.status == 'new'}
    @in_progress = tasks.select {|x| x.status == 'in_progress'}
    @complete = tasks.select {|x| x.status == 'complete'}
    @canceled = tasks.select {|x| x.status == 'cancel'}
  end


  def change_state
    task = Task.find(id: params[:id])
    if (task.state == 'new' && params[:state] == 'in_progress') ||
        (task.state == 'in_progress' && params[:state] == 'complete') ||
          (task.state == 'in_pprogress' && params[:state] == 'canceled')
      task.status = params[:state]
      task.completed_at = params[:state] == "complete" ? Time.now : nil
      task.canceled_at = params[:state] == "canceled" ? Time.now : nil
      begin
        task.save!
      rescue StandardError
        task.errors.add(:save, "Error when update task status")
        flash[:notice] = task.errors[:save]
        redirect_to root_url
      end
    else
      flash[:notice] = "Error status for task"
      redirect_to root_url
    end
  end

  def approove
    
  end
end
