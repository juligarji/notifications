class Notification < ApplicationRecord
  belongs_to :type
  
  after_save :send_notification
  
  private
    def send_notification
        NotificationMailer.send_notification( self.id ).deliver_now
    end
end
