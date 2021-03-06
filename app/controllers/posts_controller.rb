class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def edit
		@post = Post.find(params[:id])
	end
	def create
		@post = Post.new(params[:post])
		if @post.save
			redirect_to posts_path, :notice => "Your post has been saved"
		else	
			render "new"
		end
	end	
	
	def new
		@post = Post.new
		@catagory = Catagory.all 
	end
	def update
		@post = Post.find(params[:id])
		if @post.update_attributes(params[:post])
			redirect_to post_path, :notice => "Your post has been updated"
		else
			render "new"
			
		end

	end
	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to posts_path, :notice => 'Your post has been deleted'
	end
	def show
		@post = Post.find(params[:id])
	end



private

def catagory_params

params.require(:name).permit(:id)

end

private

def post_params

params.require(:post).permit(:category_id, :title, :body) 
end

end
