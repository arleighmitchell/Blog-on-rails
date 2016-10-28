class HomeController < ApplicationController
	skip_before_action :verify_authenticity_token

	def index
		  @users = User.all
		  @posts = Post.all.reverse
		  @post = Post.where(id: params[:id]).first

	end

	def create_post
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

	def create_comment_post
		user_id = User.find(session[:user_id]).id


		post = Post.find(params[:id])
		post_id = post.id

		comment = params[:comment]

		Comment.create(comment:    comment,
					   post_id:    post_id,
					   user_id:    user_id
					   )

		redirect_to '/'
	end

	def create_comment
	end

end