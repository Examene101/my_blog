class BlogsController < ApplicationController
	def index
	end

	def new 
		@blog = Blog.new

	end

	def create
		@blog = Blog.new(blog_params)
		if @blog.save
			redirect_to root_path
		else
			render "new"
		end
	end

	private 
	def blog_params
	params.require(:blog).permit(:title, :description)
  end

end
