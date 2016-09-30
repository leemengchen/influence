class Influencer < ApplicationRecord

  mount_uploader :image, ImageUploader
  validates_presence_of :email, if: :email_required?

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:instagram]

      def self.from_omniauth(auth)
        binding.pry
        where(provider: auth.provider, uid: auth.uid).first_or_create do |influencer|
        #influencer.email = "" # instagram doesn't send email, so we put an empty string
        influencer.password = Devise.friendly_token[0,20]
        influencer.firstName = auth.info.name   # assuming the user model has a name
        influencer.image = auth.info.image # assuming the user model has an image
        influencer.nickname = auth.info.nickname
      
        end
      end

      def email_required?
        false
      end
end
