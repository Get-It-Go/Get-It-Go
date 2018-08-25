class Message < ApplicationRecord
	belongs_to :user
	belongs_to :conversation
	has_one :sender , :class_name => "User", :foreign_key => "sender_id"
	# TODO sender는 user 모델의 아이디인데, 보통 저런 구문은 sender모델을 갖고오는게 디폴트니까, user모델을 갖고올수있게 하셈
end
