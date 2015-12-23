require 'shrine'
require 'shrine/storage/file_system'

Shrine.storages = {
  cache: Shrine::Storage::FileSystem.new(Dir.tmpdir),
  store: Shrine::Storage::FileSystem.new("apps/web/public", subdirectory: "uploads")
}

class ImageUploader < Shrine
  plugin :lotus, validations: true
end
