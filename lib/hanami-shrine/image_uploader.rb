require 'shrine'
require 'shrine/storage/file_system'

Shrine.storages = {
  cache: Shrine::Storage::FileSystem.new(Dir.tmpdir),
  store: Shrine::Storage::FileSystem.new("public", subdirectory: "uploads")
}

class ImageUploader < Shrine
  plugin :hanami, validations: true
end
