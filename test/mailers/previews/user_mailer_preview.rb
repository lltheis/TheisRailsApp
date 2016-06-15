# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
	
	def contact_form
		UserMailer.contact_form("john@example.com", "John", "Hi! I'd like to talk to you about your bikes.")
	end

end
