class MessagesController < ApplicationController
  before_action :find_message, only: [ :destroy ]

  def create
    @message = Message.new(message_params)

    respond_to do |format|
      if @message.save
        format.js
      else
        format.html { render "/" }
        format.js
      end
    end
  end

  def destroy
  end

  def check!
    @message = Message.find(params[:message_id])
    @message.checked = true

    respond_to do |format|
      if @message.save
        format.js
      else
        format.html { render damien_dashboard_path }
        format.js
      end
    end
  end

  def uncheck!
    @message = Message.find(params[:message_id])
    @message.checked = false

    respond_to do |format|
      if @message.save
        format.js
      else
        # format.html { render damien_dashboard_path }
        format.js
      end
    end
  end

  private

  def find_message
    @message = Message.find(params[:id])
  end

  def message_params
    params.require(:message).permit(:name, :email, :phone, :content)
  end
end
