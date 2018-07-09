class Project < ApplicationRecord
  validates_presence_of [:title, :description]
  mount_uploader :image, ImageUploader
end
