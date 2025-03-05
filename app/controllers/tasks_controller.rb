class TasksController < ApplicationController

  def index
    if session["user_id"] != nil
      @tasks = Task.where({"user_id" => session["user_id"]})
    else
      flash["notice"] = "login first!"
      redirect_to "/login"
    end
  end

  def new
  end

  def create
    if session["user_id"] == nil
      redirect_to "/tasks"
    else 
      @task = Task.new
      @task["description"] = params["description"]
      @task["user_id"] = session["user_id"]
      @task.save
      redirect_to "/tasks"
    end
  end


end
