class TasksController < ApplicationController
	before_filter :authenticate_user!

	def index
		@task = Task.all
		@tasks_grid = initialize_grid(Task)
		#@owner = task.(user_email)
	end

	def show
		@task = Task.find(params[:id])
	end

	def new 
	  	@task = Task.new
	end

	def edit
		  @task = Task.find(params[:id])
	end

	def create
		@task = current_user.tasks.new(task_params)

      if @task.save
    		 redirect_to @task
  		else
    		 render 'new'
  		end
	end

	def update
		@task = Task.find(params[:id])

		if @task.update(task_params)
			redirect_to @task
		else
		  render 'edit'
		end  	
	end

	def destroy
	  @task = Task.find(params[:id])
	  @task.destroy

	  redirect_to tasks_path
	end	
		private
      def task_params
        params.require(:task).permit(:name, :description, :deadline, :category, :user)
      end
end

