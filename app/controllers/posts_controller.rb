class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def edit

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

	end
	def destroy

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
