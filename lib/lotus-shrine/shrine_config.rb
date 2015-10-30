require 'shrine'
require 'shrine/storage/file_system'

Shrine.storages[:file_system] = Shrine::Storage::FileSystem.new("apps/web/public", subdirectory: "uploads")
