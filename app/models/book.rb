class Book < ApplicationRecord
  validates_presence_of [:title, :author, :description, :content, :cover, :rating, :amazon_link]
  mount_uploader :cover, ImageUploader
  mount_uploader :note_pic, ImageUploader
end
