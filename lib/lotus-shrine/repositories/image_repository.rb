require_relative '../image_uploader'

class ImageRepository
  include Lotus::Repository
  extend ImageUploader.repository(:image)
end
