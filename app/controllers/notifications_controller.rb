class NotificationsController < ApplicationController

  # POST /notifications
  def create
    @notification = Notification.new( notification_params )
    if @notification.save
     render json: @notification, status: :created, location: @notification
    else
      render json: @notification.errors, status: :unprocessable_entity
    end
  end

  private
    # Only allow a trusted parameter "white list" through.
    def notification_params
      params.require(:notification).permit(:type_id, :name, :content, :sender_id, :email)
    end
end
