class SessionsController < ApplicationController
	skip_before_action :verify_authenticity_token


  	def sign_in
	end

	def sign_in_post
		p params.inspect

		user = User.where(username: params[:username]).first

		if user.password == params[:password]
			session[:user_id] = user.id
			redirect_to '/profile'
		else
			redirect_to '/login-failed'
		end
	end

	def sign_out
		session.clear
		redirect_to "/"
	end

	def sign_up
	end
	
    def sign_up_post
	  	p params

		username = params[:username]
		first_name = params[:first_name]
		last_name = params[:last_name]
		age = params[:age]
		password = params[:password]
		email = params[:email]

		User.create(username:   username,
					last_name:  last_name,
					first_name: first_name,
					age:        age,
					password:   password,
					email:      email
					)

		redirect_to '/sign-in'
    end
end