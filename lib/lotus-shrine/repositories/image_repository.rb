class ImageRepository
  include Lotus::Repository
  include Lotus::Shrine::Repository[:image]
end
