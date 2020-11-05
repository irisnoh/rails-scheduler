class MessagesController < ApplicationController

    respond_to :html, :json
  
    def new
      @message = Message.new
      respond_modal_with @message
    end
  
    def create
      @message = Message.create(message_params)
      respond_modal_with @message, location: messages_path
    end
  
    private
      def set_message
        @message = Message.find(params[:id])
      end
  
      def message_params
        params.require(:message).permit(:name, :body)
      end
  end