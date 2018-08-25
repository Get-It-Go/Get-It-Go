name_ls=["슬리퍼","빨래 건조대","접시","락앤락","세제","옷걸이"]
content_ls=["이번 학기초에 사서 화장실 슬리퍼로 이용했어요! 딱히 사용감은 없는데 버리기 너무 아깝네요 ㅠㅠㅠㅠ",
            "12000원 주고산 빨래건조대입니다. 부피가 너무 커서 처분하기가 곤란하네요! 나눔합니다 ㅎㅎㅎ ",
            "이번 학기에 과일 먹으려고 산 다이소 접시입니다! 완전 꿀탬!ㅎㅎㅎ 집에 가져가다 깨질까봐 기증합니닷!",
            "일년 전에 산 락앤락인데 졸업하게 되어서 필요가 없어서 나눔합니다! 다용도 보관함으로 최고에요!",
            "세제 너무 무겁네요 그저 가저가세여!",
            "다이소에서 비싸게 사지 마시고 가져가세요! 고급진 플라스틱 옷걸이 입니다!"
            ]
status_ls=["중","최상","최상","중","최상","중"]
delivery_ls=["곤자가","곤자가","곤자가","벨라","벨라","벨라"]

1.times do |user|
	User.create!(
		email: "a@abc.com",
		password: "123123")

end	

6.times do |product|
  Product.create!(
  		   user_id: User.first.id,
  	       category: "생활용품",
           name: name_ls[product],
           content: content_ls[product],
           status: status_ls[product],
           image: "http://placehold.it/350x200",
           price: "1000",
           delivery: delivery_ls[product],
           

  )
end
puts "6 product created"

