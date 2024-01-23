# frozen_string_literal: true

class Article < ApplicationRecord
  has_many_attached :photos
  has_many :messages, dependent: :destroy

  CATEGORIES = %w[
    Antiques
    Arts
    Flooring
  ].freeze

  scope :antiques, -> { where(category: "Antiques").order(:created_at) }
  scope :arts, -> { where(category: "Arts").order(:created_at) }
  scope :flooring, -> { where(category: "Flooring").order(:created_at) }

  before_destroy :delete_photos

  private

  def delete_photos
    photos.each do |photo|
      Cloudinary::Uploader.destroy(photo.key)
      photo.purge
    end
  end
end
