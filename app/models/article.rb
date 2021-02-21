class Article < ApplicationRecord
  mount_uploader :article_image, ::ArticleImageUploader
  
  CATEGORIES = [
    "Antiques",
    "Art"
  ].freeze
end
