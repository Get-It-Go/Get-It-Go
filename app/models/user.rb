class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and 
  # has_many :conversations
  #has_many :messages
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: %i[facebook google_oauth2 kakao]
  has_many :products
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.name = auth.info.name
       # assuming the user model has a name
     # user.confirmed_at = Time.now.utc
     # user.confirmation_token = nil
     # user.skip_confirmation!
      # user.image = auth.info.image # assuming the user model has an image
    end

	end

end	