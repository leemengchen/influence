class Job < ApplicationRecord
  belongs_to :marketer
  mount_uploader :background_image, ImageUploader
end
