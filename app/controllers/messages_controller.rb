class MessagesController < ApplicationController
    def create
      	message=Message.create(message_params)
      	redirect_to 'conversation/show/:conversation_id'
    end

    private
    def message_params
        params.permit(:sender_id,:receiver_id,:product_id)
    end
end
