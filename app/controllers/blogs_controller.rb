class BlogsController < ApplicationController
	before_action :find_blog, only: [:show, :edit, :update, :destroy]

	def index
		@blogs = Blog.all.order("created_at DESC")
	end

	def show
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

	def edit 
	end

	def update
	end

	def destroy
	end

private

	def blog_params
	    params.require(:blog).permit(:title, :description)
	end

	def find_blog
	    @blog = Blog.find(params[:id])
    end
  

end
