class EditInfoController < ApplicationController
	
	skip_before_action :verify_authenticity_token

	def edit_info
	end

	def post
		params

		update_user_attributes([:first_name, :last_name, :age, :password, :email], current_user)
		
		redirect_to '/profile'
	end

		def update_user_attributes(attributes, user)
			attributes.each do |attribute|
				params[attribute].present? ? user.send("#{attribute}=", params[attribute]) : nil
			end

			user.save
		end
end