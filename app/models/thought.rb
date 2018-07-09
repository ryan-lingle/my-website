class Thought < ApplicationRecord
  validates_presence_of [:title, :content, :image]
  mount_uploader :image, ImageUploader
end
