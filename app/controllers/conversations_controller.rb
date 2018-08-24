class ConversationsController < ApplicationController

	before_action :check_duplication, only: [create]

    def create
    	conversation=Conversation.create(conversation_params)
    	redirect_to '/'
    end
    def show
    	@messages=Conversation.find(params[:conversation_id]).messages
    end
    

    private

    def conversation_params
        params.permit(:user1_id,:user2_id,:product_id)
    end

    def check_duplication
    	if Conversation.where(user1_id: params[:user1_id], user2_id: params[:user2_id],
    	   product_id: params[:product_id]).count != 0
           redirect_to '/' 
           return
    	end

    	if Conversation.where(user1_id: params[:user2_id], user2_id: params[:user1_id],
    	   product_id: params[:product_id]).count != 0
    	   redirect_to '/'
    	   return		
    	end	
    end
end
