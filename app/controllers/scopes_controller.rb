class ScopesController < ApplicationController
	before_action :set_job, only: [:new, :create]

	def new
		@scope=Scope.new
	end

	def create
		@scope=@job.scopes.new(scope_params)
    if @scope.save
      redirect_to new_job_scope_document_path(@job, @scope), alert: "You have created a new scope template! Check over the document to complete your Scope"
    else
      render 'new'
    end
	end

	private
	def set_job
		@job=Job.find(params[:job_id])
	end

	def scope_params
    params.require(:scope).permit(:cost_code,:description,:scope_type,:subcontractor,:contract_no,:project_name,:document_type,:link_contract,:governing_contract,:vendor,:vendor_prequalified,:required_documentation,:legal_name,:address,:authorized_agent_1,:authorized_agent_2,:workers,:compensation,:bond_requirement,:default_retainage,:insurance_type)
  end
end
