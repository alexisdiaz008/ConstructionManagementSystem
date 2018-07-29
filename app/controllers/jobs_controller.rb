class JobsController < ApplicationController
	before_action :authenticate_user!, only: [:index]
	
	def new
		@job=Job.new
	end

	def create
		@job=Job.new(job_params)
    if @job.save
      redirect_to root_path, alert: "You have created a new job!"
    else
      render 'new'
    end
	end

	def index
		@jobs = Job.all
	end

	def show
		@job = Job.find(params[:id])
	end
	
	private
	def job_params
    params.require(:job).permit( :job_no, :name, :address, :job_type, :administrator, :px, :pm, :gs, :warranty, :period, :textura )
  end
end