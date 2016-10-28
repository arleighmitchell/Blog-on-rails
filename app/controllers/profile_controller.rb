class ProfileController < ApplicationController
	skip_before_action :verify_authenticity_token

	def profile
		@user_posts = current_user.posts.all.reverse
		@user = current_user
	end

	def delete_post
		@post = Post.where(id: params[:id]).first
		@post.destroy

		redirect_to '/profile'
	end
end