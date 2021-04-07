# frozen_string_literal: true

class Article < ApplicationRecord
  has_many_attached :photos
  has_many :messages, dependent: :destroy

  CATEGORIES = %w[
    Antiques
    Art
  ].freeze

  scope :antiques, -> { where(category: 'Antiques') }

  before_destroy :delete_photos

  private

  def delete_photos
    photos.each do |photo|
      Cloudinary::Uploader.destroy(photo.key)
      photo.purge
    end
  end
end
