module Web::Controllers::Images
  class Create
    include Web::Action

    def call(params)
      tempfile = params['image']['tempfile']
      #uploader = Shrine.new(:file_system)
      #uploaded_file = uploader.upload(::File.open(tempfile))

      image = Image.new
      image.title = params['title']
      image.image = ::File.open(tempfile)

      ImageRepository.create(image)
    end
  end
end
