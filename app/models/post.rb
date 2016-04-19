class Post < ActiveRecord::Base
	attr_accessible :title, :body, :catagory_id, :author_id #attr_accessible is nolonger availiable in rails 4.2
	belongs_to :catagory #misspelled i know -_-'

end
