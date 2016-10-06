class Comment < ApplicationRecord
  belongs_to :job
  validates :name, presence: true
	validates :body,  presence: true
end
