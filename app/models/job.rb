class Job < ApplicationRecord
  belongs_to :marketer
  has_many :comments, dependent: :destroy
  mount_uploader :background_image, ImageUploader
  acts_as_taggable
end
