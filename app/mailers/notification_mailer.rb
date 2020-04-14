class NotificationMailer < ApplicationMailer
	
	def send_notification( id )
		@notification = Notification.find( id )
		mail(to: @notification.email, subject: @notification.subject)
	end
end
