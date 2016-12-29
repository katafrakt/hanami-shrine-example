require_relative '../image_uploader'

class ImageRepository < Hanami::Repository
  prepend ImageUploader.repository(:image)
end
