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

	  def order_placed(user, product)
    @user = user
    @product = product
    mail(:from => 'theis.laura.l@gmail.com',
      :to => @user.email,
      :subject => "Thank you for your bikes-by-laura purchase!")
  end

end
