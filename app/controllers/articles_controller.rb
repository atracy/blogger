class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end

	def show
		id = params[:id]
		#id = params['id']
		@article = Article.find(id)
	end
		

	def new
		@article = Article.new
	end

	def create
		article_params = params[:article]
		article = Article.new
		article.title = article_params[:title]
		article.body = article_params[:body]
		article.save

		#always redirect to another page
		redirect_to article_path(article)
	end

	def destroy
			Article.delete(params[:id])
			redirect_to article_path
	end

	def edit
		
	end

	def update
		@article = Article.find(params[:id])
		@article.update_attributes article_params
		@article.save

		flash[:notice] = "Successfully UPDATED article!"
end