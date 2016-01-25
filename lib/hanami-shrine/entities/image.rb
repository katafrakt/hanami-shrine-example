require_relative '../image_uploader'

class Image
  include Hanami::Entity
  include ImageUploader[:image]

  attributes :title, :image_data
end
