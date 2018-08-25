class ConversationsController < ApplicationController

	before_action :check_duplication, only: [:create]
    
    def index
        redirect_to '/'
    end

	def new
    @conversation = Converstion.new

    end

    def create
       
        # @conversation = Converstion.create(conversation_params)
        @conversation = Converstion.new
        @conversation.user1_id = params[:user1_id]
        @conversation.user2_id = params[:user2_id]
        @conversation.product_id = params[:product_id]
        @conversation.save
        
        redirect_to "/conversations/#{@conversation.id}"
    end

    def show
    	@messages=Converstion.find(params[:id]).messages
    end
    

    private

    def conversation_params
        params.permit(:user1_id, :user2_id, :product_id)
    end

    def check_duplication
        @conversation = Converstion.where(user1_id: params[:user1_id], user2_id: params[:user2_id], product_id: params[:product_id])
        if @conversation.count != 0
            
           redirect_to "/conversations/#{@conversation[0].id}"
           return
        end
        
        @conversation = Converstion.where(user1_id: params[:user2_id], user2_id: params[:user1_id], product_id: params[:product_id])
        if @conversation.count != 0
           
    	   redirect_to "/conversations/#{@conversation[0].id}"
    	   return		
        end	
    end
end
