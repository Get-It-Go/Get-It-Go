class MessagesController < ApplicationController

	def new
		@message=Message.new
	end
    def create
      	@message=Message.new
        @message.sender_id=params[:sender_id]
        @message.converstion_id=parmas[:converstion_id]
      	redirect_back(fallback_location: root_path)
    end  	
    private
    def message_params
        params.permit(:sender_id,:receiver_id,:product_id)
    end
end
