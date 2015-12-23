class Image
  include Lotus::Entity
  include ImageUploader[:image]

  attributes :title, :image_data
end
