class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def edit

	end
	def create
	Catagory.create(catagory_params)

	end
	def new

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
	def create

Post.create(post_params)

end

private

def post_params

params.require(:title, :body, :category_id, :author_id)

end

end
