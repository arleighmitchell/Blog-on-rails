class PostsController < ApplicationController
	def posts
		@post = Post.where(id: params[:id]).first
	end

	def post
		params.inspect

		user_id = User.find(session[:user_id]).id
		title = params[:title]
		body = params[:body]

		Post.create(user_id: user_id,
					title:   title,
					body:    body
					)

		redirect_to '/'
	end
end