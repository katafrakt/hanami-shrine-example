require_relative '../image_uploader'

class ImageRepository
  include Hanami::Repository
  extend ImageUploader.repository(:image)
end
