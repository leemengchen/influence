class Job < ApplicationRecord
  belongs_to :marketer
  mount_uploader :background_image, ImageUploader
  acts_as_taggable
end
