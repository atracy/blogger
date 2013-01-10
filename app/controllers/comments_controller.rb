class CommentsController < ApplicationController
	def create
		@comment = Comment.new(params[:comment])
		@comment.save
	end

	def comment_params
		params[:comment].permit(:author, :body, :article_id)
	end
end
