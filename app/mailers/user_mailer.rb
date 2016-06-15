class UserMailer < ApplicationMailer
	default from: "theis.laura.l@gmail.com"

	def contact_form(email, name, message)
		@message = message
		@name = name
		@email = email
		mail(:from => email,
			:to => "theis.laura.l@gmail.com",
			:subject => "A new contact form message from #{name}")
	end
end
