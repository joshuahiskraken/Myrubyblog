class PostsController < ApplicationController
	def index
		@content_first = '<%= @content_first %> Any string can be dynamically assigned in the posts_controller. This will be used for grabbing content from the database'
		@content_second = '<%=@content_second%> This is also a dynamic string located in the posts_controller'
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
