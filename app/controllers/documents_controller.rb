class DocumentsController < ApplicationController
	def new
		@document=Document.new
	end
end