class Marketer < ApplicationRecord

  has_many :jobs
  mount_uploader :avatar, AvatarUploader
  validates :email, presence: true , uniqueness: true
  validates :name, presence: true
  validates :companyName, presence: true 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
