class CommentsController < ApplicationController
	before_action :authenticate_user!
	def index
	end
	def new
	comment = Comment.new
	end
	def create
  	@comment = @viaje.comments.new(comment_params)
  	@comment.user = current_user
  	@comment.save
  	if @comment.save
  		redirect_to @comment
  	else
  		render :new
    end
	end
end
