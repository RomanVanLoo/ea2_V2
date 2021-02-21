class Article < ApplicationRecord
  has_many_attached :photos
  
  CATEGORIES = [
    "Antiques",
    "Art"
  ].freeze

  before_destroy :delete_photos

  private

  def delete_photos
    photos.each do |photo|
      Cloudinary::Uploader.destroy(photo.key)
      photo.purge
    end
  end
end
