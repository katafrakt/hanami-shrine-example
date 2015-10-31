class Image
  include Lotus::Entity
  include Shrine[:image]
  
  attributes :title, :image_data
end
