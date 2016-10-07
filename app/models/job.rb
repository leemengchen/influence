class Job < ApplicationRecord
  belongs_to :marketer
  has_many :comments, dependent: :destroy
  mount_uploader :background_image, ImageUploader
  acts_as_taggable
  validates :title, presence: true
  validates :description, presence: true
  validates :background_image, presence: true
  validates :budget, presence: true
  validates :requirements, presence: true
  validates :skills, presence: true
end
